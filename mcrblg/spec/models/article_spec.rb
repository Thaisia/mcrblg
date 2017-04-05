require "spec_helper"

describe Article do

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:text) }

  it { should have_many(:comments) }

  it "brings title" do
    article = create(:article, title: 'Ololo lolo')
    expect(article.subject).to eq 'Ololo lolo'
  end

  it "brings last comment" do
    article = create(:article_with_comments)
    expect(article.last_comment.body).to eq "comment body 3"
  end

end
