window.Mocks or= {}

promiseMock = 
  pipe : ->
  fail : ->
  done : ->
  then : ->

Mocks.Hoodie = ->
  
  baseUrl : 'http://my.cou.ch'
  
  trigger       : ->
  request       : ->
  open          : ->
  on            : ->
  one           : ->
  unbind        : ->
  defer         : $.Deferred
  isPromise     : Hoodie::isPromise
  uuid          : -> 'uuid'
    
  store         :
    create        : -> promiseMock 
    destroy       : -> promiseMock 
    save          : -> promiseMock 
    update        : -> promiseMock 
    updateAll     : -> promiseMock 
    find          : -> promiseMock 
    findAll       : -> promiseMock
    findOrCreate  : -> promiseMock 
    delete        : -> promiseMock 
    destroyAll    : -> promiseMock 
    changedDocs   : ->
    isDirty       : ->
      
    db :
      getItem       : ->
      setItem       : ->
      removeItem    : ->
                
  account       : 
    authenticate    : -> promiseMock
    db              : ->
    on              : ->
    ownerHash       : 'owner_hash'
    hasAccount      : ->
    anonymousSignUp : ->
    
  config :
    set : ->
    get : ->
    remove : ->
    clear : ->

  remote :
    connect     : ->
    disconnect  : ->
    sync        : ->
    on          : ->
    one         : ->
    trigger     : ->