json.extract! answer, :id, :body, :question_id, :author_id

json.answer_comments do
  json.array! answer.answer_comments do |answer_comment|
    json.partial! 'api/answer_comments/answer_comment',
    answer_comment: answer_comment
  end
end

json.num_upvotes answer.answer_upvotes.size

json.num_downvotes answer.answer_downvotes.size
