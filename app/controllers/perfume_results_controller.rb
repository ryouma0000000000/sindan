class PerfumeResultsController < ApplicationController
    def create
        @perfume = Perfume.find(params[:perfume_id])
        @perfume_result = PerfumeResult.new(perfume: @perfume, content: generate_content(@perfume))
    
        if @perfume_result.save
          redirect_to @perfume, notice: '診断結果が保存されました。'
        else
          redirect_to @perfume, alert: '診断結果の保存に失敗しました。'
        end
      end
    
      private
      def generate_content(perfume)
        # perfumeに基づいてcontentを生成する処理
        "Sample content based on perfume #{perfume.name}"
      end
end
