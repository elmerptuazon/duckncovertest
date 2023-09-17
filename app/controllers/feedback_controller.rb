class FeedbackController < ApplicationController
    def create
        @blog_post = BlogPost.find(params[:id])
        
        if @blog_post.author_name != nil && @blog_post.author_email != nil
            NotifierMailer.with(user: @blog_post).new_feedback(@blog_post.author_email).deliver_now
        else
            NotifierMailer.new_feedback_no_email.deliver_now
        end
        @feedback = Feedback.new(feedback_params)
        if @feedback.save
            redirect_to blog_posts_path()
        else
            redirect_to abort feedback_params.inspect
        end
    end

    private

    def feedback_params
        params.require(:feedback).permit(:user, :content).merge(blog_post_id: params[:id])
    end
end
