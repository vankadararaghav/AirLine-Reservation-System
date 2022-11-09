/**
 * This class is generated by jOOQ
 */
package tech.codingclub.helix.tables;

/**
 * This class is generated by jOOQ.
 */
@javax.annotation.Generated(value    = { "http://www.jooq.org", "3.3.2" },
                            comments = "This class is generated by jOOQ")
@java.lang.SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class Flight extends org.jooq.impl.TableImpl<tech.codingclub.helix.tables.records.FlightRecord> {

	private static final long serialVersionUID = -1443748053;

	/**
	 * The singleton instance of <code>public.flight</code>
	 */
	public static final tech.codingclub.helix.tables.Flight FLIGHT = new tech.codingclub.helix.tables.Flight();

	/**
	 * The class holding records for this type
	 */
	@Override
	public java.lang.Class<tech.codingclub.helix.tables.records.FlightRecord> getRecordType() {
		return tech.codingclub.helix.tables.records.FlightRecord.class;
	}

	/**
	 * The column <code>public.flight.id</code>.
	 */
	public final org.jooq.TableField<tech.codingclub.helix.tables.records.FlightRecord, java.lang.Long> ID = createField("id", org.jooq.impl.SQLDataType.BIGINT.nullable(false).defaulted(true), this, "");

	/**
	 * The column <code>public.flight.from</code>.
	 */
	public final org.jooq.TableField<tech.codingclub.helix.tables.records.FlightRecord, java.lang.String> FROM = createField("from", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>public.flight.to</code>.
	 */
	public final org.jooq.TableField<tech.codingclub.helix.tables.records.FlightRecord, java.lang.String> TO = createField("to", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>public.flight.name</code>.
	 */
	public final org.jooq.TableField<tech.codingclub.helix.tables.records.FlightRecord, java.lang.String> NAME = createField("name", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>public.flight.cost</code>.
	 */
	public final org.jooq.TableField<tech.codingclub.helix.tables.records.FlightRecord, java.lang.Long> COST = createField("cost", org.jooq.impl.SQLDataType.BIGINT, this, "");

	/**
	 * Create a <code>public.flight</code> table reference
	 */
	public Flight() {
		this("flight", null);
	}

	/**
	 * Create an aliased <code>public.flight</code> table reference
	 */
	public Flight(java.lang.String alias) {
		this(alias, tech.codingclub.helix.tables.Flight.FLIGHT);
	}

	private Flight(java.lang.String alias, org.jooq.Table<tech.codingclub.helix.tables.records.FlightRecord> aliased) {
		this(alias, aliased, null);
	}

	private Flight(java.lang.String alias, org.jooq.Table<tech.codingclub.helix.tables.records.FlightRecord> aliased, org.jooq.Field<?>[] parameters) {
		super(alias, tech.codingclub.helix.Public.PUBLIC, aliased, parameters, "");
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Identity<tech.codingclub.helix.tables.records.FlightRecord, java.lang.Long> getIdentity() {
		return tech.codingclub.helix.Keys.IDENTITY_FLIGHT;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.UniqueKey<tech.codingclub.helix.tables.records.FlightRecord> getPrimaryKey() {
		return tech.codingclub.helix.Keys.FLIGHT_ID_PRIMARY_KEY;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public java.util.List<org.jooq.UniqueKey<tech.codingclub.helix.tables.records.FlightRecord>> getKeys() {
		return java.util.Arrays.<org.jooq.UniqueKey<tech.codingclub.helix.tables.records.FlightRecord>>asList(tech.codingclub.helix.Keys.FLIGHT_ID_PRIMARY_KEY, tech.codingclub.helix.Keys.UNIQUE_FLIGHT);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public tech.codingclub.helix.tables.Flight as(java.lang.String alias) {
		return new tech.codingclub.helix.tables.Flight(alias, this);
	}

	/**
	 * Rename this table
	 */
	public tech.codingclub.helix.tables.Flight rename(java.lang.String name) {
		return new tech.codingclub.helix.tables.Flight(name, null);
	}
}
