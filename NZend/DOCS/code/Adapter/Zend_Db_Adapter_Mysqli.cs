///////////////////////////////////////////////////////////
//  Zend_Db_Adapter_Mysqli.cs
//  Implementation of the Class Zend_Db_Adapter_Mysqli
//  Generated by Enterprise Architect
//  Created on:      08-jun-2011 22:13:23
//  Original author: alexis
///////////////////////////////////////////////////////////




using Zend.Db.Adapter;
namespace Zend.Db.Adapter {
	/// <summary>
	/// @category   Zend
	///        @package    Zend_Db
	///        @subpackage Adapter
	///        @copyright  Copyright (c) 2005-2010 Zend Technologies USA Inc. (http:
	/// //www.zend.com)
	///        @license    http://framework.zend.com/license/new-bsd     New BSD
	/// License
	/// </summary>
	public class Zend_Db_Adapter_Mysqli : Zend_Db_Adapter_Abstract {

		/// <summary>
		/// Default class name for a DB statement.
		///          @var string
		/// </summary>
		protected var _defaultStmtClass = 'Zend_Db_Statement_Mysqli';
		/// <summary>
		/// Keys are UPPERCASE SQL datatypes or the constants Zend_Db::INT_TYPE, Zend_Db::
		/// BIGINT_TYPE, or Zend_Db::FLOAT_TYPE.  Values are: 0 = 32-bit integer 1 = 64-bit
		/// integer 2 = float or decimal
		///          @var array Associative array of datatypes to values 0, 1, or 2.
		/// </summary>
		protected var _numericDataTypes = array(
		                  Zend_Db::INT_TYPE    => Zend_Db::INT_TYPE,
		                  Zend_Db::BIGINT_TYPE => Zend_Db::BIGINT_TYPE,
		                  Zend_Db::FLOAT_TYPE  => Zend_Db::FLOAT_TYPE,
		                  'INT'                => Zend_Db::INT_TYPE,
		                  'INTEGER'            => Zend_Db::INT_TYPE,
		                  'MEDIUMINT'          => Zend_Db::INT_TYPE,
		                  'SMALLINT'           => Zend_Db::INT_TYPE,
		                  'TINYINT'            => Zend_Db::INT_TYPE,
		                  'BIGINT'             => Zend_Db::BIGINT_TYPE,
		                  'SERIAL'             => Zend_Db::BIGINT_TYPE,
		                  'DEC'                => Zend_Db::FLOAT_TYPE,
		                  'DECIMAL'            => Zend_Db::FLOAT_TYPE,
		                  'DOUBLE'             => Zend_Db::FLOAT_TYPE,
		                  'DOUBLE PRECISION'   => Zend_Db::FLOAT_TYPE,
		                  'FIXED'              => Zend_Db::FLOAT_TYPE,
		                  'FLOAT'              => Zend_Db::FLOAT_TYPE
		              );
		/// <summary>
		/// @var Zend_Db_Statement_Mysqli
		/// </summary>
		protected var _stmt = null;

		public Zend_Db_Adapter_Mysqli(){

		}

		~Zend_Db_Adapter_Mysqli(){

		}

		public override void Dispose(){

		}

		/// <summary>
		/// Begin a transaction.
		/// </summary>
		/// void
		protected var _beginTransaction(){

			return null;
		}

		/// <summary>
		/// Commit a transaction.
		/// </summary>
		/// void
		protected var _commit(){

			return null;
		}

		/// <summary>
		/// Creates a connection to the database.
		/// </summary>
		/// void
		protected var _connect(){

			return null;
		}

		/// <summary>
		/// Quote a raw string.
		/// </summary>
		/// <param>mixed $value Raw string</param>
		/// <param>string           Quoted string</param>
		/// <param name="value"></param>
		protected var _quote(var value){

			return null;
		}

		/// <summary>
		/// Roll-back a transaction.
		/// </summary>
		/// void
		protected var _rollBack(){

			return null;
		}

		/// <summary>
		/// Force the connection to close.
		/// </summary>
		/// void
		public var closeConnection(){

			return null;
		}

		/// <summary>
		/// Returns the column descriptions for a table.  The return value is an
		/// associative array keyed by the column name, as returned by the RDBMS.  The
		/// value of each array element is an associative array with the following keys:
		/// SCHEMA_NAME      => string; name of database or schema TABLE_NAME       =>
		/// string; COLUMN_NAME      => string; column name COLUMN_POSITION  => number;
		/// ordinal position of column in table DATA_TYPE        => string; SQL datatype
		/// name of column DEFAULT          => string; default expression of column, null
		/// if none NULLABLE         => boolean; true if column can have nulls LENGTH
		///    => number; length of CHAR/VARCHAR SCALE            => number; scale of
		/// NUMERIC/DECIMAL PRECISION        => number; precision of NUMERIC/DECIMAL
		/// UNSIGNED         => boolean; unsigned property of an integer type PRIMARY
		///   => boolean; true if column is part of the primary key PRIMARY_POSITION =>
		/// integer; position of column in primary key IDENTITY         => integer; true if
		/// column is auto-generated with unique values
		/// </summary>
		/// <param>string $tableName</param>
		/// <param>string $schemaName OPTIONAL</param>
		/// <param>array</param>
		/// <param name="tableName"></param>
		/// <param name="schemaName"></param>
		public var describeTable(var tableName, var schemaName){

			return null;
		}

		/// <summary>
		/// Returns the symbol the adapter uses for delimiting identifiers.
		/// </summary>
		/// string
		public var getQuoteIdentifierSymbol(){

			return null;
		}

		/// <summary>
		/// Retrieve server version in PHP style
		/// </summary>
		/// string
		public var getServerVersion(){

			return null;
		}

		/// <summary>
		/// Test if a connection is active
		/// </summary>
		/// boolean
		public var isConnected(){

			return null;
		}

		/// <summary>
		/// Gets the last ID generated automatically by an IDENTITY/AUTOINCREMENT column.
		/// As a convention, on RDBMS brands that support sequences (e.g. Oracle,
		/// PostgreSQL, DB2), this method forms the name of a sequence from the arguments
		/// and returns the last id generated by that sequence. On RDBMS brands that
		/// support IDENTITY/AUTOINCREMENT columns, this method returns the last value
		/// generated for such a column, and the table name argument is disregarded.  MySQL
		/// does not support sequences, so $tableName and $primaryKey are ignored.
		/// </summary>
		/// <param>string $tableName   OPTIONAL Name of table.</param>
		/// <param>string $primaryKey  OPTIONAL Name of primary key column.</param>
		/// <param>string
		///          @todo Return value should be int?</param>
		/// <param name="tableName"></param>
		/// <param name="primaryKey"></param>
		public var lastInsertId(var tableName, var primaryKey){

			return null;
		}

		/// <summary>
		/// Adds an adapter-specific LIMIT clause to the SELECT statement.
		/// </summary>
		/// <param>string $sql</param>
		/// <param>int $count</param>
		/// <param>int $offset OPTIONAL</param>
		/// <param>string</param>
		/// <param name="sql"></param>
		/// <param name="count"></param>
		/// <param name="offset"></param>
		public var limit(var sql, var count, var offset){

			return null;
		}

		/// <summary>
		/// Returns a list of the tables in the database.
		/// </summary>
		/// array
		public var listTables(){

			return null;
		}

		/// <summary>
		/// Prepare a statement and return a PDOStatement-like object.
		/// </summary>
		/// <param>string  $sql  SQL query</param>
		/// <param>Zend_Db_Statement_Mysqli</param>
		/// <param name="sql"></param>
		public var prepare(var sql){

			return null;
		}

		/// <summary>
		/// Set the fetch mode.
		/// </summary>
		/// <param>int $mode</param>
		/// <param>void</param>
		/// <param name="mode"></param>
		public var setFetchMode(var mode){

			return null;
		}

		/// <summary>
		/// Check if the adapter supports real SQL parameters.
		/// </summary>
		/// <param>string $type 'positional' or 'named'</param>
		/// <param>bool</param>
		/// <param name="type"></param>
		public var supportsParameters(var type){

			return null;
		}

	}//end Zend_Db_Adapter_Mysqli

}//end namespace Adapter