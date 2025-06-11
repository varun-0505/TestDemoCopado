public class BookingManager {

// Method to confirm a booking
public static String confirmBooking(Id bookingId) {
Booking__c booking = [SELECT Id, Booking_Status__c FROM Booking__c WHERE Id = :bookingId LIMIT 1];
if (booking.Booking_Status__c != 'Booked') {
booking.Booking_Status__c = 'Booked';
update booking;
return 'Booking Confirmed';
} else {
return 'Already Confirmed';
}
}
}