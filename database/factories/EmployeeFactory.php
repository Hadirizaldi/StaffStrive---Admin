<?php

namespace Database\Factories;

use App\Models\Employee;
use App\Models\Position;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Employee>
 */
class EmployeeFactory extends Factory
{

    protected $model = Employee::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $positions = Position::whereNull('deleted_at')->pluck('id')->toArray();

        return [
            'position_id' => $this->faker->randomElement($positions),
            'name' => $this->faker->name,
            'email' => $this->faker->unique()->safeEmail,
            'phone' => $this->faker->phoneNumber,
            'gender' => $this->faker->randomElement(['male', 'female']),
            'age' => $this->faker->numberBetween(18, 60),
            'photo' => $this->faker->imageUrl(640, 480, 'animals', true),
            'status' => $this->faker->randomElement([1]),
        ];
    }
}
