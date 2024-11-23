require "rails_helper"

RSpec.describe "Api::V1::HealthCheck", type: :request do
    describe "GET api/v1/health_check" do
        subject { get(api_v1_health_check_path) } # テストを行う対象（操作を定義し、subjectに格納）

        # 返ってきたレスポンスのボディーが以下を満たしていることを検証する
        it "正常にレスポンスが変える" do
            subject
            res = JSON.parse(response.body)
            expect(res["message"]).to eq "Success Health Check!"
            expect(response).to have_http_status(:success)
        end
    end
end