@AccountUserFilter = React.createClass

  getDefaultProps: ->
    onFilter: React.PropTypes.func.isRequired
    users: React.PropTypes.array.isRequired

  createFilterSearch: (users) ->
    _.map users, (user) ->
      text: "#{user.first_name} #{user.last_name}".toLowerCase()
      user: user

  filter: ->
    filterText = @refs.AccountUserFilter.getDOMNode().value.trim().toLowerCase()
    userSearch = @createFilterSearch(@props.users)
    filteredUsers = _.chain(userSearch).filter((userSearch) ->
      userSearch.text.indexOf(filterText) != -1
    ).map((userSearch) ->
      userSearch.user
    ).value()

    @props.onFilter?(filteredUsers)

  submit: (e) ->
    e.preventDefault()

  render: ->
    <form id='account_user_filter' className='row-fluid' onSubmit={this.submit}>
      <input type='search' id='account_user_filter_field' name='filter' placeholder='Filter users' ref='AccountUserFilter' className='span12' onKeyUp={@filter} />
    </form>
