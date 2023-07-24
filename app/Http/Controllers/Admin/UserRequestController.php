<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\MassDestroyUserRequest;
use App\Http\Requests\StoreUserRequestTicket;
use App\Http\Requests\UpdateUserRequestTicket;
use App\UserRequest;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class UserRequestController extends Controller
{
    public function index()
    {
        abort_if(Gate::denies('user_request'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $users = UserRequest::all();

        return view('admin.userRequest.index', compact('users'));
    }

    public function create()
    {
        abort_if(Gate::denies('user_request'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $users = UserRequest::all();
        // $users = UserRequest::all();

        return view('admin.userRequest.create', compact('users'));
    }

    public function store(StoreUserRequestTicket $request)
    {
        $user = UserRequest::create($request->all());
        // $user->roles()->sync($request->input('roles', []));

        return redirect()->route('admin.userrequest.index');
    }

    public function edit(User $user)
    {
        abort_if(Gate::denies('user_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $roles = Role::all()->pluck('title', 'id');

        $user->load('roles');

        return view('admin.users.edit', compact('roles', 'user'));
    }

    public function update(UpdateUserRequest $request, User $user)
    {
        $user->update($request->all());
        $user->roles()->sync($request->input('roles', []));

        return redirect()->route('admin.users.index');
    }

    public function show(User $user)
    {
        abort_if(Gate::denies('user_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $user->load('roles');

        return view('admin.users.show', compact('user'));
    }

    public function destroy(User $user)
    {
        abort_if(Gate::denies('user_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $user->delete();

        return back();
    }

    public function massDestroy(MassDestroyUserRequest $request)
    {
        User::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
