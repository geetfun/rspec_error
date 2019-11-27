require 'rails_helper'

RSpec.describe BlogPost, type: :model do

  it 'is not valid' do
    blog_post = BlogPost.new
    expect(blog_post).to_not be_valid
  end

end
