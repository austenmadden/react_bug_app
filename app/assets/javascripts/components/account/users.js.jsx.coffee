@AccountUsers = React.createClass

  getDefaultProps: ->
    users: React.PropTypes.array.isRequired

  render: ->
    renderUser = (user) =>
      <AccountUser key={user.id} user={user} />

    <div className='row-fluid'>
      <div className='span12  scroll_container'>
        <table id="users" className='table table-bordered'>
          <div className='row-fluid'>
            <tbody>{@props.users.map(renderUser)}</tbody>
          </div>
        </table>
      </div>
    </div>
