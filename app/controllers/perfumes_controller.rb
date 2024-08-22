class PerfumesController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_perfume, only: [:show, :create, :save_result]

  def index
    @perfumes = Perfume.all.includes(:perfume_results)
  
  end

  def new
    @perfume = Perfume.new
  end

  def show
    @perfume = Perfume.find_by(id: params[:id])
    @name = params[:name]
    @perfume_results = @perfume.perfume_results
  end


  def set_perfume
    @perfume = Perfume.find_by(id: params[:id])
    if @perfume.nil?
      Rails.logger.debug("Perfume with ID #{params[:id]} was not found.")
      flash[:alert] = "ダメ"
      redirect_to perfumes_path and return
    else
      Rails.logger.debug("Perfume found: #{@perfume.inspect}")
    end
  end



  def save_result

    @perfume = Perfume.find(params[:id])

    if @perfume.nil?
      Rails.logger.debug("Attempted to save result but @perfume is nil.")
      flash[:alert] = "Perfumeが見つかりません。"
      redirect_to perfumes_path and return
    end

    @perfume_result = @perfume.perfume_results.new(content: params[:content])
    @perfume_result = PerfumeResult.new(content: generate_content(@perfume), perfume: @perfume)
    
    if @perfume_result.save
      flash[:notice] = "診断結果が保存されました。"
    else
      flash[:alert] = "診断結果の保存に失敗しました。"
    end
    redirect_to perfume_path(@perfume)
  end




  def create
   
    @perfume = Perfume.new(perfume_params)

   


    @perfume = Perfume.new(perfume_params)
    
    if params[:perfume][:question]
      @perfume.question = params[:perfume][:question].join("")
    end
    
    


    
    if @perfume.save
      redirect_to @perfume
    else
      redirect_to :action => "new"
    end
  end







  private

  def perfume_params
    params.require(:perfume).permit(:id, question: [])
end

  def set_perfume
    @perfume = Perfume.find_by(id: params[:id])
   
  end

  def generate_content(perfume)
   
  end

  def perfume_params
    params.require(:perfume).permit(:question)
  end 
end

   
  