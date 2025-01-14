<?php

namespace App\Http\Controllers;

use App\Models\Kunde;
use Illuminate\Http\Request;

class KundeController extends Controller
{
    // Retrieve all records
    public function index()
    {
        $kunden = Kunde::all();  // Fetch all customers (rows from 'kunden' table)
        return response()->json($kunden);
    }

    // Create a new record
    public function store(Request $request)
    {
        // Updated validation to align with nullable columns
        $request->validate([
            'nachname' => 'nullable|string',  // Field is nullable
            'vorname' => 'nullable|string',   // Field is nullable
            'email' => 'nullable|string|email', // Nullable but validated as email
            'telefonnummer' => 'nullable|string', // Nullable and an integer
            'strasse_nr' => 'nullable|string', // Field is nullable
            'plz' => 'nullable|integer',      // Nullable and an integer
            'ort' => 'nullable|string',       // Field is nullable
        ]);

        $kunde = Kunde::create($request->all());
        return response()->json($kunde, 201);  // Return newly created customer
    }

    // Get a single record by ID
    public function show($id)
    {
        $kunde = Kunde::findOrFail($id);  // Find customer by ID
        return response()->json($kunde);
    }

    // Update an existing record by ID
    public function update(Request $request, $id)
    {
        // Updated validation for nullable fields
        $request->validate([
            'nachname' => 'nullable|string',  // Field is nullable
            'vorname' => 'nullable|string',   // Field is nullable
            'email' => 'nullable|string|email', // Nullable but validated as email
            'telefonnummer' => 'nullable|string', // Nullable and an integer
            'strasse_nr' => 'nullable|string', // Field is nullable
            'plz' => 'nullable|integer',      // Nullable and an integer
            'ort' => 'nullable|string',       // Field is nullable
        ]);

        $kunde = Kunde::findOrFail($id);
        $kunde->update($request->all());

        return response()->json($kunde);
    }

    // Delete a record by ID
    public function destroy($id)
    {
        $kunde = Kunde::findOrFail($id);
        $kunde->delete();

        return response()->json(null, 204);  // Return HTTP 204 for successful delete
    }
}
