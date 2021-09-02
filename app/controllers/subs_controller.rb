class SubsController < ApplicationController
  def index
    #controller traffic directors, take from the routes and 
    # lead into the actions run the methods

    #actions CRUD, functions we are able to view, do in the appl 
    # with each action they will jave a method to it , naem should match action

    # actions  http verbs
    # create   post
    # read      get 
    # update    put/patch
    # destroy   delete

    # logic will be in the modle
  
    # controller pattern 

    def inex 
      @model_naem = model.all
      render component: 'ModelNames', props {modle_name: @modle_names}

    # ACTIONS
    # index - show all records in the table, take to a page 
    # show  - take in an id, and show a singel record, page/logic to show a single record
    # new - pages, new form, take to a page to fill out feilds for a new object, create in memory
    # edit - pages,need id edit form, to fill out fields that the id records return
    # create - apply to the database, create the record in the database, uses infor from the new form
    # update - apply to the database, update the record in the database us info from the edit form
    # destroy - apply to the database, deleting a single record with passed through id 
  end

  def show
    @model_name = Model_name.find(params[:id])
    render components: 'ModelnName;', props:{model_name:@model_name.}
  end

  def new
    @model_naem = Model_naem.new
    render components: 'ModelNameNew' , props; {model_name: @model_name }

  end
def create 
  @ model_name = Model_name.new(model_name_params)
  if @odle_new.save
    #go to a helper
  else 
    render components: 'ModelNameNew', props: [model_name: @modle_name]

  def edit
    @model_name = Model_naem.find(params[:id])
    rener compnents: 'Modle_name.NameEdit', props: {model_name: @modle_name }

    def update 
      @model_name = model_name.find(params[:id])
      if @model_name.update(model_name_params)
        #take to another helper
      else
        render components 'ModleNameEdit'

  end

  def subs_params
end
