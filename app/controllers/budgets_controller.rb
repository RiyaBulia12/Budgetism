class BudgetsController < ApplicationController
  before_action :set_budget, only: %i[show edit update destroy]

  # GET /budgets or /budgets.json
  def index
    @category = Category.find(params[:category_id])
    @current_user = current_user
    @budgets = Category.find(params[:category_id]).category_budgets.order(created_at: :desc)
  end

  # GET /budgets/1 or /budgets/1.json
  def show; end

  # GET /budgets/new
  def new
   @budget = Budget.new
  end

  # POST /budgets or /budgets.json
  def create
    @budget = current_user.budgets.new(budget_params)
    if @budget.save
      @category_budget = CategoryBudget.new(category_id: params[:category_id], budget_id: @budget.id)
      @category_budget.save
      redirect_to category_budgets_url(params[:category_id]), notice: 'Budget was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def budget_params
    params.require(:budget).permit(:name, :amount)
  end
end
