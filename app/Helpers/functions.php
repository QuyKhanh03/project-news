<?php


//function renderSlug(string $name): string

function renderSlug(string $name): string
{
    $slug = strtolower($name);
    $slug = str_replace(' ', '-', $slug);
    $slug = preg_replace('/[^A-Za-z0-9\-]/', '', $slug);
    return $slug;
}


