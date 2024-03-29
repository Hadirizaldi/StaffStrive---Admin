<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EmployeeRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        // return [
        //     'position_id' => 'required|exists:positions,id',
        //     'name' => 'required|string|max:255',
        //     'email' => 'required|email|unique:employees,email',
        //     'phone' => 'nullable|string|max:20',
        //     'gender' => 'required|in:male,female',
        //     'age' => 'required|integer|min:18|max:99',
        //     'photo' => 'required|nullable|image|max:2048',
        // ];

        $employeeId = $this->route('employee');

        return [
            'position_id' => 'required|exists:positions,id',
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:employees,email,' . ($employeeId ? $employeeId : 'NULL') . ',id,deleted_at,NULL',
            'phone' => 'nullable|string|max:20',
            'gender' => 'required|in:male,female',
            'age' => 'required|integer|min:18|max:99',
            'photo' => 'nullable|image|max:2048',
            'status' => 'boolean'
        ];
    }
}
