class BalancesController < InheritedResources::Base

  before_action :find_Balance, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_user!
  def index
    @balances = Balance.where(user_id: current_user)

  end
  def show
  end

  def new
    @balance = current_user.balances.build
  end

  def create
    @balance = current_user.balances.build(balance_params)

    if @balance.save
      redirect_to @balance
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @balance.update(balance_params)

  redirect_to @Balance
else
  render 'edit'
end
  end

  def destroy
    @balance.destroy
  end

  private
  def find_Balance
    @balance = Balance.find(params[:id])
  end
    def balance_params
      params.require(:balance).permit(:balance)
    end
end
