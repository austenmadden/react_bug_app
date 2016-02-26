@UserList = React.createClass

  getInitialState: ->
    visibleUsers: @props.users

  getDefaultProps: ->
    users: React.PropTypes.array.isRequired

  filterUsers: (filteredUsers) ->
    @setState visibleUsers: filteredUsers

  render: ->
    <div className='span6'>
      <h3 className='well'>
        Users
        <a href="/new" id="add-user" className="pull-right btn btn-success">
          <i className="icon-plus icon-white"> </i>
          Add user
        </a>
        <div className='row-fluid'>
            <UserFilter users={@props.users} onFilter={@filterUsers} />
        </div>
      </h3>
      <div className='row-fluid'>
        <div className='span12'>
          <Users users={@state.visibleUsers} />
        </div>
      </div>
    </div>
