class TopicsController < ApplicationController
  before_action sets_sub
  def index
    #@topics = topics
 @topics = @sub.topics
 render componetns 'Topics', props:{topics @topics}
 end
  
  def show
    @topics = @sub.topics.find(params[:id])
    render component: 'Topic', props:{topics:@topic}
  end

  def new
  end

  def edit
  end

    private
      def sets_sub
        @sub = Sub.find(params: [:sub_id])

end
end
