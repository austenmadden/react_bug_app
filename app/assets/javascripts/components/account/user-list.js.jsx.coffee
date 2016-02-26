@UserList = React.createClass

  getInitialState: ->
    visibleUsers: @props.users

  getDefaultProps: ->
    account: React.PropTypes.object.isRequired
    users: React.PropTypes.array.isRequired

  filterUsers: (filteredUsers) ->
    @setState visibleUsers: filteredUsers

  render: ->
    <div className='span6'>
      <h3 className='well'>
        Users
        <a href="#{@props.account.id}/users/new" id="add-user" className="pull-right btn btn-success">
          <i className="icon-plus icon-white"> </i>
          Add user
        </a>
        <div className='row-fluid'>
            <AccountUserFilter users={@props.users} onFilter={@filterUsers} />
        </div>
      </h3>
      <div className='row-fluid'>
        <div className='span12'>
          <AccountUsers users={@state.visibleUsers} />
        </div>
      </div>
    </div>
