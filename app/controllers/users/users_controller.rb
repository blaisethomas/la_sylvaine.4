class UsersController < ApplicationController

  def index
    @users = User.find_by_sql("SELECT u.id AS user_id, u.first_name || ' ' || u.surname AS user_name,
    COUNT(*) AS pupil_count,
    SUM(COALESCE((SELECT SUM(adjusted_price) FROM pupil_has_years WHERE pupil_id = p.id AND payment_id IS NULL),0.0)) AS registration_total,
    SUM(COALESCE((SELECT SUM(adjusted_price) FROM pupil_has_lessons WHERE pupil_id = p.id AND payment_id IS NULL), 0.0)) AS lesson_total
    FROM users AS u
     INNER JOIN pupils AS p ON u.id = p.user_id
    GROUP BY u.id, u.first_name, u.surname
    ORDER BY u.surname, u.first_name;")
  end

end