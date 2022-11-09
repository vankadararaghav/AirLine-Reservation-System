/**
 * This class is generated by jOOQ
 */
package tech.codingclub.helix;

/**
 * This class is generated by jOOQ.
 *
 * A class modelling foreign key relationships between tables of the <code>public</code> 
 * schema
 */
@javax.annotation.Generated(value    = { "http://www.jooq.org", "3.3.2" },
                            comments = "This class is generated by jOOQ")
@java.lang.SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class Keys {

	// -------------------------------------------------------------------------
	// IDENTITY definitions
	// -------------------------------------------------------------------------

	public static final org.jooq.Identity<tech.codingclub.helix.tables.records.FlightRecord, java.lang.Long> IDENTITY_FLIGHT = Identities0.IDENTITY_FLIGHT;
	public static final org.jooq.Identity<tech.codingclub.helix.tables.records.MemberRecord, java.lang.Long> IDENTITY_MEMBER = Identities0.IDENTITY_MEMBER;
	public static final org.jooq.Identity<tech.codingclub.helix.tables.records.PassengerRecord, java.lang.Long> IDENTITY_PASSENGER = Identities0.IDENTITY_PASSENGER;

	// -------------------------------------------------------------------------
	// UNIQUE and PRIMARY KEY definitions
	// -------------------------------------------------------------------------

	public static final org.jooq.UniqueKey<tech.codingclub.helix.tables.records.FlightRecord> FLIGHT_ID_PRIMARY_KEY = UniqueKeys0.FLIGHT_ID_PRIMARY_KEY;
	public static final org.jooq.UniqueKey<tech.codingclub.helix.tables.records.FlightRecord> UNIQUE_FLIGHT = UniqueKeys0.UNIQUE_FLIGHT;
	public static final org.jooq.UniqueKey<tech.codingclub.helix.tables.records.MemberRecord> UNIQUE = UniqueKeys0.UNIQUE;
	public static final org.jooq.UniqueKey<tech.codingclub.helix.tables.records.MemberRecord> UNIQUE_ID = UniqueKeys0.UNIQUE_ID;
	public static final org.jooq.UniqueKey<tech.codingclub.helix.tables.records.PassengerRecord> PASSENGER_PRIMARYKEY = UniqueKeys0.PASSENGER_PRIMARYKEY;

	// -------------------------------------------------------------------------
	// FOREIGN KEY definitions
	// -------------------------------------------------------------------------


	// -------------------------------------------------------------------------
	// [#1459] distribute members to avoid static initialisers > 64kb
	// -------------------------------------------------------------------------

	private static class Identities0 extends org.jooq.impl.AbstractKeys {
		public static org.jooq.Identity<tech.codingclub.helix.tables.records.FlightRecord, java.lang.Long> IDENTITY_FLIGHT = createIdentity(tech.codingclub.helix.tables.Flight.FLIGHT, tech.codingclub.helix.tables.Flight.FLIGHT.ID);
		public static org.jooq.Identity<tech.codingclub.helix.tables.records.MemberRecord, java.lang.Long> IDENTITY_MEMBER = createIdentity(tech.codingclub.helix.tables.Member.MEMBER, tech.codingclub.helix.tables.Member.MEMBER.ID);
		public static org.jooq.Identity<tech.codingclub.helix.tables.records.PassengerRecord, java.lang.Long> IDENTITY_PASSENGER = createIdentity(tech.codingclub.helix.tables.Passenger.PASSENGER, tech.codingclub.helix.tables.Passenger.PASSENGER.PASSENGER_ID);
	}

	private static class UniqueKeys0 extends org.jooq.impl.AbstractKeys {
		public static final org.jooq.UniqueKey<tech.codingclub.helix.tables.records.FlightRecord> FLIGHT_ID_PRIMARY_KEY = createUniqueKey(tech.codingclub.helix.tables.Flight.FLIGHT, tech.codingclub.helix.tables.Flight.FLIGHT.ID);
		public static final org.jooq.UniqueKey<tech.codingclub.helix.tables.records.FlightRecord> UNIQUE_FLIGHT = createUniqueKey(tech.codingclub.helix.tables.Flight.FLIGHT, tech.codingclub.helix.tables.Flight.FLIGHT.FROM, tech.codingclub.helix.tables.Flight.FLIGHT.TO, tech.codingclub.helix.tables.Flight.FLIGHT.NAME);
		public static final org.jooq.UniqueKey<tech.codingclub.helix.tables.records.MemberRecord> UNIQUE = createUniqueKey(tech.codingclub.helix.tables.Member.MEMBER, tech.codingclub.helix.tables.Member.MEMBER.EMAIL);
		public static final org.jooq.UniqueKey<tech.codingclub.helix.tables.records.MemberRecord> UNIQUE_ID = createUniqueKey(tech.codingclub.helix.tables.Member.MEMBER, tech.codingclub.helix.tables.Member.MEMBER.ID);
		public static final org.jooq.UniqueKey<tech.codingclub.helix.tables.records.PassengerRecord> PASSENGER_PRIMARYKEY = createUniqueKey(tech.codingclub.helix.tables.Passenger.PASSENGER, tech.codingclub.helix.tables.Passenger.PASSENGER.PASSENGER_ID);
	}
}
