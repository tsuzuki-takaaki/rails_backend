RSpec.describe "Homes", type: :request do
  describe "GET /index" do
    subject { get root_path }

    it 'returns http success' do
      subject
      expect(response).to have_http_status(200)
    end
  end
end
