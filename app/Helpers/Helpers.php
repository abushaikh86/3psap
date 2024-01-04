<?php

use Carbon\Carbon;
use App\Models\backend\ActivityLog;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;
use App\Models\backend\SeriesMaster;
use App\Models\backend\Financialyear;
use Carbon\CarbonPeriod;

if (!function_exists('formatted_date')) {
    function formatted_date($date)
    {
        $date = Carbon::parse($date)->format('d-m-Y');
        return $date;
    }
}

if (!function_exists('amount_in_words')) {
    function amount_in_words($number)
    {
        if (isset($_GET['amount_in_words'])) {
            $number = $_GET['amount_in_words'];
        }

        if (($number < 0) || ($number > 999999999)) {
            throw new Exception("Number is out of range");
        }
        $Gn = floor($number / 10000000);  /* Crore */
        $number -= $Gn * 10000000;
        $kn = floor($number / 100000);     /* lakhs */
        $number -= $kn * 100000;
        $Hn = floor($number / 1000);      /* thousand */
        $number -= $Hn * 1000;
        $Dn = floor($number / 100);       /* Tens (deca) */
        $number = $number % 100;               /* Ones */
        $tn = floor($number / 10);
        $one = floor($number % 10);
        $res = "";
        if ($Gn) {
            $res .= amount_in_words($Gn) . " Crore";
        }
        if ($kn) {
            $res .= (empty($res) ? "" : " ") .
                amount_in_words($kn) . " Lakhs";
        }
        if ($Hn) {
            $res .= (empty($res) ? "" : " ") .
                amount_in_words($Hn) . " Thousand";
        }

        if ($Dn) {
            $res .= (empty($res) ? "" : " ") .
                amount_in_words($Dn) . " Hundred";
        }

        $ones = array("", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eightteen", "Nineteen");
        $tens = array("", "", "Twenty", "Thirty", "Fourty", "Fifty", "Sixty", "Seventy", "Eigthy", "Ninety");
        if ($tn || $one) {
            if (!empty($res)) {
                $res .= " and ";
            }
            if ($tn < 2) {
                $res .= $ones[$tn * 10 + $one];
            } else {
                $res .= $tens[$tn];
                if ($one) {
                    $res .= "-" . $ones[$one];
                }
            }
        }
        // if (empty($res))
        // {
        //     $res = "zero";
        // }
        return $res;
    }

    //avtivity logs function
    if (!function_exists('captureActivity')) {
        function captureActivity($data)
        {
            // dd($data);
            $user_array = [];
            $id = Auth()->guard('admin')->user()->admin_user_id;
            $username = Auth()->guard('admin')->user()->first_name . ' ' . Auth()->guard('admin')->user()->last_name;
            $ses_id = Session::getId();

            $user_array = [
                'user_id' => $id,
                'user_name' => $username,
                'session_id' => $ses_id
            ];

            $row = array_merge($user_array, $data);
            $log = new ActivityLog();
            $log->fill($row);
            $log->save();
        }
    }


    if (!function_exists('captureActivityupdate')) {
        function captureActivityupdate($new_changes, $log)
        {
            // dd($new_changes,$log);
            $user_array = [];
            $id = Auth()->guard('admin')->user()->admin_user_id;
            $username = Auth()->guard('admin')->user()->first_name . ' ' . Auth()->guard('admin')->user()->last_name;
            $ses_id = Session::getId();
            $user_array = ['user_id' => $id, 'user_name' => $username, 'session_id' => $ses_id];

            $new_changes = array_filter($new_changes, function ($key) {
                return $key !== 'updated_at';
            }, ARRAY_FILTER_USE_KEY);

            $dataAttributes = array_map(function ($value, $key) {
                return $key . '="' . $value . '"';
            }, array_values($new_changes), array_keys($new_changes));

            $dataAttributes = implode(' ', $dataAttributes);


            $log['description'] = $log['description'] .  ' Change=> '  . $dataAttributes;
            // $log['description'] = $log['description'] . htmlspecialchars(' <span style="color: red;">To</span> ') . $dataAttributes;
            // dd($log['description']);

            $row = array_merge($user_array, $log);
            $log = new ActivityLog();
            $log->fill($row);
            $log->save();
        }
    }



    if (!function_exists('get_series_number')) {
        function get_series_number($moduleName)
        {
            $moduleName = str_replace(' ', '', strtolower(trim($moduleName)));
            $existingModules = DB::table('modules')->pluck('name', 'id')->map(function ($name) {
                return  str_replace(' ', '', strtolower(trim($name)));
            })->toArray();
            $module_id = array_search($moduleName, $existingModules);
            //now get series number
            $series_data = SeriesMaster::where('module', $module_id)->first();

            return $series_data->series_number ?? '';
        }
    }


    if (!function_exists('getCommonArrays')) {
        function getCommonArrays()
        {
            $week = ['Week 1', 'Week 2', 'Week 3', 'Week 4', 'Week 5'];
            $days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];

            $month_data = CarbonPeriod::create(now()->startOfMonth(), '1 month', now()->addMonths(11)->startOfMonth());
            $month_data = collect($month_data)->map(function ($item, $key) {
                return date('F', strtotime($item));
            })->all();

            $year_data = CarbonPeriod::create(now()->startOfYear(), '1 year', now()->addYears(9)->startOfYear());
            $year_data = collect($year_data)->map(function ($item, $key) {
                return date('Y', strtotime($item));
            })->all();

            return [
                'week' => array_combine($week, $week),
                'days' => array_combine($days, $days),
                'month' => array_combine($month_data, $month_data),
                'year' => array_combine($year_data, $year_data),
            ];
        }
    }
}
