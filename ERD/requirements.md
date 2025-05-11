# ERD: Airbnb Database System

## Entities and Attributes

**User**
- user_id (PK)
- first_name
- last_name
- email (UNIQUE)
- password_hash
- phone_number
- role (ENUM: guest, host, admin)
- created_at

**Property**
- property_id (PK)
- host_id (FK to User.user_id)
- name
- description
- location
- pricepernight
- created_at
- updated_at

**Booking**
- booking_id (PK)
- property_id (FK to Property.property_id)
- user_id (FK to User.user_id)
- start_date
- end_date
- total_price
- status (ENUM: pending, confirmed, canceled)
- created_at

**Payment**
- payment_id (PK)
- booking_id (FK to Booking.booking_id)
- amount
- payment_date
- payment_method (ENUM: credit_card, paypal, stripe)

**Review**
- review_id (PK)
- property_id (FK to Property.property_id)
- user_id (FK to User.user_id)
- rating (CHECK: 1-5)
- comment
- created_at

**Message**
- message_id (PK)
- sender_id (FK to User.user_id)
- recipient_id (FK to User.user_id)
- message_body
- sent_at

## Relationships

- User to Booking (1:M)
- Property to Booking (1:M)
- Booking to Payment (1:1)
- User to Review (1:M), Property to Review (1:M)
- User to Message (1:M as sender and recipient)