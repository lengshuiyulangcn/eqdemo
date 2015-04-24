class IssuesController < ApplicationController
 before_filter :authenticate_user! 
 def index
  	@issues=Issue.all
  end
  def new
  	@rooms=Room.all
	@equipments=Equipment.all
  end
  def create
  	 issue=Issue.new
	 issue_param=params.require(:equiplist)
	 issue.equipment_id=issue_param[:equipment_id]
	 issue.user_id=current_user.id
	 issue.title=issue_param[:title]
	 issue.content=issue_param[:content]
	 issue.state=:open
	 if can? :create, issue 
	 issue.save
	 redirect_to issues_path
	 else
	 redirect_to :back
	 end
  end
  def edit
	  
  end
  def update
  end
  def close
  	issue=Issue.find(params.permit(:id)[:id])
	if can? :manage, issue
		issue.state=params[:new_state][:state].to_sym
		issue.save
		redirect_to :back
	end
  end
  def destroy
	  @issue=Issue.find(params.permit(:id)[:id])
	  if can? :destroy, @issue
		@issue.destroy
	  	redirect_to issues_path
	  end


  end
  def update_equipments
     @equipments=Equipment.where(:room_id => params.permit(:room_id)[:room_id])
  end

  private
  def issue_params
  	params.require(:issue).permit(:id,:title,:content,:equipment_id,:user_id,:room_number)
  end
end
