class ToolsController < ApplicationController

  def index
    @tools = Tool.all
  end

  def new
    @tool = Tool.new
  end

  def create
    tool = Tool.new(tool_params)
    if tool.save
      redirect_to tools_path
    else
      render :new
    end
  end

  def edit
    @tool = Tool.find(params[:id])
  end

  def update
    tool = Tool.find(params[:id])
    updated = tool.update(tool_params)
    if updated
      redirect_to tools_path
    end
  end

  def destroy
    Tool.delete(params[:id])
    redirect_to tools_path
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :quantity, :price)
  end
end
