<?php
use Phalcon\Config;
use Phalcon\Logger;
return new Config([
  'privateResources' => [
    'users' => [
      'index',
      'search',
      'edit',
      'create',
      'delete',
      'changePassword'
    ],
    'profiles' => [
      'index',
      'search',
      'edit',
      'create',
      'delete'
    ],
    'permissions' => [
      'index'
    ],
    'record' => [
      'index',
      'create',
      'delete',
      'update',
      'disable'
    ],
    'domains' => [
      'index',
      'edit',
      'updateDescription',
      'create',
      'delete'
    ],
    'nameserver' => [
      'index',
      'create',
      'delete',
      'update',
      'edit'
    ],
    'topdomains' => [
      'index',
      'create',
      'delete',
      'update',
      'edit'
    ],
    'changelog' => [
      'index',
      'show'
    ]
  ]
]);
