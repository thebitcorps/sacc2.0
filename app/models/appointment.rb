class Appointment < ActiveRecord::Base
######################### Validations ##########################
    validates :customer_id, :date, :time, :place, presence: true

####################### Active Relations ########################
    belongs_to :customer
    belongs_to :user

#################### Class Methods / Scopes #####################
    scope :from_customer, ->(customer) {where( customer_id: customer.id).order(date: :asc, time: :asc)}
    scope :same_date, ->(date) {where(date: date)}
    scope :after_date, ->(date) {where('date > ?', date)}
    scope :before_date, ->(date) {where('date < ?', date)}

####################### Instance Methods ########################

    def start_time
        date
    end

end
