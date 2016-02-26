@AccountUser = React.createClass
  getDefaultProps: ->
    user: React.PropTypes.object.isRequired

  render: ->
    <tr>
      <td id="user_#{@props.user.id}" className='user'>{@props.user.first_name} {@props.user.last_name}
        <div className='pull-right'>
          <a href="/users/masquerade/#{@props.user.id}" className="btn btn-danger btn-mini">
            Masquerade
          </a>
          <a href="#{@props.user.account_id}/users/#{@props.user.id}/edit" id="edit-user-#{@props.user.id}" className="btn btn-info btn-mini">
            Edit
          </a>
        </div>
      </td>
    </tr>
