<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

        $roles = ["admin","customer"];

        for ($i=0; $i < 6; $i++) { 
            $user = User::factory()->create([
                'first_name' => fake()->firstName(),
                'last_name' => fake()->lastName(),
                'email' => fake()->unique()->safeEmail(),
                'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
                'role' => $roles[rand(0,1)],
                'created_at' => fake()->time(),
                'updated_at' => fake()->time()
            ]);
        }



        // Listing::factory(6)->create([
        //     'user_id' => $user->id
        // ]);

    }
}
