<?php

use Carbon\Carbon;
use App\Models\backend\ActivityLog;
use App\Models\backend\Company;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;
use App\Models\backend\SeriesMaster;
use App\Models\backend\Financialyear;
use Carbon\CarbonPeriod;
use Spatie\Permission\Models\Role;


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
            $days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
            $weeks = ['Week 1', 'Week 2', 'Week 3', 'Week 4', 'Week 5'];

            $month_data = collect(CarbonPeriod::create(now()->startOfMonth(), '1 month', now()->addMonths(11)->startOfMonth()))
                ->map(function ($item) {
                    return date('F', strtotime($item));
                })->all();

            $year_data = collect(CarbonPeriod::create(now()->startOfYear(), '1 year', now()->addYears(9)->startOfYear()))
                ->map(function ($item) {
                    return date('Y', strtotime($item));
                })->all();

            return [
                'days' => array_combine($days, $days),
                'week' => array_combine($weeks, $weeks),
                'month' => array_combine($month_data, $month_data),
                'year' => array_combine($year_data, $year_data),
            ];
        }
    }

    // usama 29-01-2024 - check if current user is super admin
    if (!function_exists('is_superAdmin')) {
        function is_superAdmin()
        {
            $role = Role::where([
                'id' => Auth()
                    ->guard('admin')
                    ->user()->role,
                'department_id' => 1,
            ])->first();

            return !empty($role) ? 1 : 0;
        }
    }

    // usama_16-02-2024- fetch id with name or create new for excel
    if (!function_exists('getOrCreateId')) {
        function getOrCreateId($model, $fieldName, $excelValue, $primaryKeyName, $extra_id = null)
        {
            //St.Ives
            $value = trim(addslashes($excelValue));
            $record = $model::whereRaw('LOWER(' . $fieldName . ') LIKE ?', [strtolower($value)])->first();

            if (!empty($value)) {
                if (!$record) {
                    // Record doesn't exist, create a new one
                    $newRecord = new $model([$fieldName => $value]);
                    if ($model == 'App\Models\backend\Gst' && !empty($extra_id)) {
                        $newRecord->gst_percent = $extra_id;
                    }
                    if ($model == 'App\Models\backend\State' && !empty($extra_id)) {
                        $newRecord->country_id = $extra_id;
                    }
                    if ($model == 'App\Models\backend\City' && !empty($extra_id)) {
                        $newRecord->state_id = $extra_id;
                    }
                    // dd($newRecord);

                    $newRecord->save();

                    // Return the new ID
                    return $newRecord->$primaryKeyName;
                }

                // Record exists, return its ID
                return $record->$primaryKeyName;
            }
        }
    }

    if (!function_exists('getId')) {
        function getId($model, $fieldName, $excelValue, $primaryKeyName)
        {
            //St.Ives
            $value = trim(addslashes($excelValue));
            $record = $model::whereRaw('LOWER(' . $fieldName . ') LIKE ?', [strtolower($value)])->first();

            if (!empty($value)) {
                return $record->$primaryKeyName;
            }else{
                return null;
            }
        }
    }

    if (!function_exists('getIdDB')) {
        function getIdDB($tableName, $fieldName, $excelValue, $primaryKeyName)
        {
            //St.Ives
            $value = trim(addslashes($excelValue));
            $record = DB::table($tableName)->where($fieldName, $value)->first();

            if (!empty($value)) {
                return $record->$primaryKeyName;
            }else{
                return null;
            }
        }
    }

    // usama_19-02-2024-for creating or updating multiple fields
    if (!function_exists('getOrCreateIdModelWise')) {
        function getOrCreateIdModelWise($model, $firstName, $lastName, $excelValue, $primaryKeyName, $dep_id, $extra_id = null)
        {
            $value = explode(" ", trim(addslashes($excelValue))); // usama shaikh
            $fName = $value[0];
            $lName = $value[1]??'';
            $conditions = empty($lName) ? [$firstName => $fName] : [$firstName => $fName, $lastName => $lName];
            $record = $model::where($conditions)->first();

            $role = Role::where('department_id', $dep_id)->first();
            $company = Company::first();

            if (!empty($value)) {
                if (!$record) {
                    // Record doesn't exist, create a new one
                    $newRecord = new $model([$firstName => $fName, $lastName => $lName, 'role' => $role->id]);

                    if (!empty($extra_id)) {
                        $newRecord->parent_users = $extra_id;
                    }
                    $newRecord->account_status = 1;
                    $newRecord->company_id = $company->company_id;

                    $newRecord->save();

                    // Return the new ID
                    return $newRecord->$primaryKeyName;
                }

                // Record exists, return its ID
                return $record->$primaryKeyName;
            }
        }
    }

    // usama_16-02-2024- fetch id with name or create new for excel
    if (!function_exists('getOrCreateIdUsingDB')) {
        function getOrCreateIdUsingDB($tableName, $fieldName, $excelValue, $primaryKeyName)
        {
            $value = trim(addslashes($excelValue));
            $record = DB::table($tableName)->where($fieldName, $value)->first();

            if (!empty($value)) {
                if (!$record) {
                    // Record doesn't exist, create a new one
                    $newRecordData = [
                        $fieldName => $value,
                    ];

                    $newRecordId = DB::table($tableName)->insertGetId($newRecordData);

                    // Return the new ID
                    return $newRecordId;
                }

                // Record exists, return its ID
                return $record->$primaryKeyName;
            }
        }
    }
}
