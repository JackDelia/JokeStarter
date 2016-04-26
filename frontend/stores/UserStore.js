var Store = require("flux/utils").Store,
    Dispatcher = require("../dispatcher/Dispatcher");

var UserStore = new Store(Dispatcher);

var _user = null;

UserStore.__onDispatch = function(payload){
  switch (payload.actionType) {

  }
};
