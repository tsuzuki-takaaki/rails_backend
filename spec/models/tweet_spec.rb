RSpec.describe Tweet, type: :model do
  describe 'scope' do
    before do
      tweet_today
      tweet_2_weeks_ago
      tweet_2_months_ago
    end

    let(:tweet_today) { create(:tweet) }
    let(:tweet_2_weeks_ago) { Timecop.travel(2.weeks.ago) { create(:tweet) } }
    let(:tweet_2_months_ago) { Timecop.travel(2.months.ago) { create(:tweet) } }

    describe ':weekly' do
      subject { described_class.weekly }

      it 'returns only weekly tweets' do
        expect(subject).to include(tweet_today)
      end
    end

    describe 'monthly' do
      subject { described_class.monthly }

      it 'returns only monthly tweets' do
        expect(subject).to include(tweet_2_weeks_ago)
      end
    end
  end
end
