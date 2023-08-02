@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.create') }} {{ trans('cruds.ticket.title_singular') }}
    </div>

    <div class="card-body">
        <form action="{{ route("admin.approval.store") }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group {{ $errors->has('title') ? 'has-error' : '' }}">
                <label for="email">User</label>
                <input type="text" id="title" name="title" class="form-control" value="{{ $user->email  }}" required readonly>
                @if($errors->has('user'))
                    <em class="invalid-feedback">
                        {{ $errors->first('user') }}
                    </em>
                @endif
                <p class="helper-block">
                    {{ trans('cruds.ticket.fields.title_helper') }}
                </p>
            </div>
            <div class="form-group {{ $errors->has('ticketUser_id') ? 'has-error' : '' }}">
                <label for="UserReq">Ticket ID *</label>
                <select name="ticket_id" id="ticket_id" class="form-control select" required>
                    @foreach($ticketUser as $id => $ticketUser)
                        <option value="{{ $id }}" {{ (isset($ticket) && $ticket->ticketUser ? $ticket->ticket_id->id : old('id')) == $id ? 'selected' : '' }}>
                        {{ $id }} - {{ $ticketUser }}</option>
                    @endforeach
                </select>
                @if($errors->has('ticketUser_id'))
                    <em class="invalid-feedback">
                        {{ $errors->first('ticketUser_id') }}
                    </em>
                @endif
            </div>
            <div class="form-group {{ $errors->has('category_id') ? 'has-error' : '' }}">
                <label for="category">Pick System *</label>
                <select name="category_id" id="category_id" class="form-control select" required>
                    @foreach($categories as $id => $category)
                        <option value="{{ $id }}" {{ (isset($ticket) && $ticket->category ? $ticket->category->id : old('category_id')) == $id ? 'selected' : '' }}>{{ $category }}</option>
                    @endforeach
                </select>
                @if($errors->has('category_id'))
                    <em class="invalid-feedback">
                        {{ $errors->first('category_id') }}
                    </em>
                @endif
            </div>
            <div class="form-group {{ $errors->has('userRequest_id') ? 'has-error' : '' }}">
                <label for="UserReq">User Request *</label>
                <select name="userRequest" id="userRequest" class="form-control select" required>
                    @foreach($userRequest as $id => $userRequest)
                        <option value="{{ $id }}" {{ (isset($ticket) && $ticket->userRequest ? $ticket->userRequest->id : old('id')) == $id ? 'selected' : '' }}>{{ $userRequest }}</option>
                    @endforeach
                </select>
                @if($errors->has('userRequest_id'))
                    <em class="invalid-feedback">
                        {{ $errors->first('userRequest_id') }}
                    </em>
                @endif
            </div>
            <div class="form-group {{ $errors->has('request') ? 'has-error' : '' }}">
                <label for="Request">Modification? *</label>
                <input type="text" id="modification" name="modification" class="form-control" value="{{ old('request', isset($ticket) ? $ticket->request : '') }}" required>
                @if($errors->has('request'))
                    <em class="invalid-feedback">
                        {{ $errors->first('request') }}
                    </em>
                @endif
                <p class="helper-block">
                    {{ trans('cruds.ticket.fields.title_helper') }}
                </p>
            </div>
            <div class="form-group {{ $errors->has('request') ? 'has-error' : '' }}">
                <label for="Request">URL / Link ? *</label>
                <input type="text" id="url" name="url" class="form-control" value="{{ old('request', isset($ticket) ? $ticket->request : '') }}" required>
                @if($errors->has('request'))
                    <em class="invalid-feedback">
                        {{ $errors->first('request') }}
                    </em>
                @endif
                <p class="helper-block">
                    {{ trans('cruds.ticket.fields.title_helper') }}
                </p>
            </div>
            @if(auth()->user()->isAdmin())
                <div class="form-group {{ $errors->has('assigned_to_user_id') ? 'has-error' : '' }}">
                    <label for="assigned_to_user">{{ trans('cruds.ticket.fields.assigned_to_user') }}</label>
                    <select name="assigned_to_user_id" id="assigned_to_user" class="form-control select2">
                        @foreach($assigned_to_users as $id => $assigned_to_user)
                            <option value="{{ $id }}" {{ (isset($ticket) && $ticket->assigned_to_user ? $ticket->assigned_to_user->id : old('assigned_to_user_id')) == $id ? 'selected' : '' }}>{{ $assigned_to_user }}</option>
                        @endforeach
                    </select>
                    @if($errors->has('assigned_to_user_id'))
                        <em class="invalid-feedback">
                            {{ $errors->first('assigned_to_user_id') }}
                        </em>
                    @endif
                </div>
            @endif
            @if(auth()->user()->isQA())
                <div class="form-group {{ $errors->has('assigned_to_user_id') ? 'has-error' : '' }}">
                    <label for="assigned_to_user">{{ trans('cruds.ticket.fields.assigned_to_user') }}</label>
                    <select name="assigned_to_user_id" id="assigned_to_user" class="form-control select2">
                        @foreach($assigned_to_users as $id => $assigned_to_user)
                            <option value="{{ $id }}" {{ (isset($ticket) && $ticket->assigned_to_user ? $ticket->assigned_to_user->id : old('assigned_to_user_id')) == $id ? 'selected' : '' }}>{{ $assigned_to_user }}</option>
                        @endforeach
                    </select>
                    @if($errors->has('assigned_to_user_id'))
                        <em class="invalid-feedback">
                            {{ $errors->first('assigned_to_user_id') }}
                        </em>
                    @endif
                </div>
            @endif
            <div>
                <input class="btn btn-danger" type="submit" value="{{ trans('global.save') }}">
            </div>
        </form>


    </div>
</div>
@endsection

@section('scripts')
<script>
    var uploadedAttachmentsMap = {}
Dropzone.options.attachmentsDropzone = {
    url: '{{ route('admin.tickets.storeMedia') }}',
    maxFilesize: 2, // MB
    addRemoveLinks: true,
    headers: {
      'X-CSRF-TOKEN': "{{ csrf_token() }}"
    },
    params: {
      size: 2
    },
    success: function (file, response) {
      $('form').append('<input type="hidden" name="attachments[]" value="' + response.name + '">')
      uploadedAttachmentsMap[file.name] = response.name
    },
    removedfile: function (file) {
      file.previewElement.remove()
      var name = ''
      if (typeof file.file_name !== 'undefined') {
        name = file.file_name
      } else {
        name = uploadedAttachmentsMap[file.name]
      }
      $('form').find('input[name="attachments[]"][value="' + name + '"]').remove()
    },
    init: function () {
@if(isset($ticket) && $ticket->attachments)
          var files =
            {!! json_encode($ticket->attachments) !!}
              for (var i in files) {
              var file = files[i]
              this.options.addedfile.call(this, file)
              file.previewElement.classList.add('dz-complete')
              $('form').append('<input type="hidden" name="attachments[]" value="' + file.file_name + '">')
            }
@endif
    },
     error: function (file, response) {
         if ($.type(response) === 'string') {
             var message = response //dropzone sends it's own error messages in string
         } else {
             var message = response.errors.file
         }
         file.previewElement.classList.add('dz-error')
         _ref = file.previewElement.querySelectorAll('[data-dz-errormessage]')
         _results = []
         for (_i = 0, _len = _ref.length; _i < _len; _i++) {
             node = _ref[_i]
             _results.push(node.textContent = message)
         }

         return _results
     }
}
</script>
@stop