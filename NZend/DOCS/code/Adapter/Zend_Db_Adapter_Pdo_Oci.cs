///////////////////////////////////////////////////////////
//  Zend_Db_Adapter_Pdo_Oci.cs
//  Implementation of the Class Zend_Db_Adapter_Pdo_Oci
//  Generated by Enterprise Architect
//  Created on:      08-jun-2011 22:13:16
//  Original author: alexis
///////////////////////////////////////////////////////////




using Zend.Db.Adapter.Pdo;
namespace Zend.Db.Adapter.Pdo {
	/// <summary>
	/// Class for connecting to Oracle databases and performing common operations.
	///          @category   Zend
	///          @package    Zend_Db
	///          @subpackage Adapter
	///          @copyright  Copyright (c) 2005-2010 Zend Technologies USA Inc. (http:
	/// //www.zend.com)
	///          @license    http://framework.zend.com/license/new-bsd     New BSD
	/// License
	/// </summary>
	public class Zend_Db_Adapter_Pdo_Oci : Zend_Db_Adapter_Pdo_Abstract {

		/// <summary>
		/// Default class name for a DB statement.
		///            @var string
		/// </summary>
		protected var _defaultStmtClass = 'Zend_Db_Statement_Pdo_Oci';
		/// <summary>
		/// Keys are UPPERCASE SQL datatypes or the constants Zend_Db::INT_TYPE, Zend_Db::
		/// BIGINT_TYPE, or Zend_Db::FLOAT_TYPE.  Values are: 0 = 32-bit integer 1 = 64-bit
		/// integer 2 = float or decimal
		///            @var array Associative array of datatypes to values 0, 1, or 2.
		/// </summary>
		protected var _numericDataTypes = array(
		                    Zend_Db::INT_TYPE    => Zend_Db::INT_TYPE,
		                    Zend_Db::BIGINT_TYPE => Zend_Db::BIGINT_TYPE,
		                    Zend_Db::FLOAT_TYPE  => Zend_Db::FLOAT_TYPE,
		                    'BINARY_DOUBLE'      => Zend_Db::FLOAT_TYPE,
		                    'BINARY_FLOAT'       => Zend_Db::FLOAT_TYPE,
		                    'NUMBER'             => Zend_Db::FLOAT_TYPE
		                );
		/// <summary>
		/// PDO type.
		///            @var string
		/// </summary>
		protected var _pdoType = 'oci';

		public Zend_Db_Adapter_Pdo_Oci(){

		}

		~Zend_Db_Adapter_Pdo_Oci(){

		}

		public override void Dispose(){

		}

		/// <summary>
		/// Creates a PDO DSN for the adapter from $this->_config settings.
		/// </summary>
		/// string
		protected var _dsn(){

			return null;
		}

		/// <summary>
		/// Quote a raw string. Most PDO drivers have an implementation for the quote()
		/// method, but the Oracle OCI driver must use the same implementation as the
		/// Zend_Db_Adapter_Abstract class.
		/// </summary>
		/// <param>string $value     Raw string</param>
		/// <param>string           Quoted string</param>
		/// <param name="value"></param>
		protected var _quote(var value){

			return null;
		}

		/// <summary>
		/// Returns the column descriptions for a table.  The return value is an
		/// associative array keyed by the column name, as returned by the RDBMS.  The
		/// value of each array element is an associative array with the following keys:
		/// SCHEMA_NAME      => string; name of schema TABLE_NAME       => string;
		/// COLUMN_NAME      => string; column name COLUMN_POSITION  => number; ordinal
		/// position of column in table DATA_TYPE        => string; SQL datatype name of
		/// column DEFAULT          => string; default expression of column, null if none
		/// NULLABLE         => boolean; true if column can have nulls LENGTH           =>
		/// number; length of CHAR/VARCHAR SCALE            => number; scale of
		/// NUMERIC/DECIMAL PRECISION        => number; precision of NUMERIC/DECIMAL
		/// UNSIGNED         => boolean; unsigned property of an integer type PRIMARY
		///   => boolean; true if column is part of the primary key PRIMARY_POSITION =>
		/// integer; position of column in primary key IDENTITY         => integer; true if
		/// column is auto-generated with unique values
		///            @todo Discover integer unsigned property.
		///            @param string $tableName
		///            @param string $schemaName OPTIONAL
		///            @return array
		/// </summary>
		/// <param name="tableName"></param>
		/// <param name="schemaName"></param>
		public var describeTable(var tableName, var schemaName){

			return null;
		}

		/// <summary>
		/// Gets the last ID generated automatically by an IDENTITY/AUTOINCREMENT column.
		/// As a convention, on RDBMS brands that support sequences (e.g. Oracle,
		/// PostgreSQL, DB2), this method forms the name of a sequence from the arguments
		/// and returns the last id generated by that sequence. On RDBMS brands that
		/// support IDENTITY/AUTOINCREMENT columns, this method returns the last value
		/// generated for such a column, and the table name argument is disregarded.
		/// Oracle does not support IDENTITY columns, so if the sequence is not specified,
		/// this method returns null.
		/// </summary>
		/// <param>string $tableName   OPTIONAL Name of table.</param>
		/// <param>string $primaryKey  OPTIONAL Name of primary key column.</param>
		/// <param>string</param>
		/// <param name="tableName"></param>
		/// <param name="primaryKey"></param>
		public var lastInsertId(var tableName, var primaryKey){

			return null;
		}

		/// <summary>
		/// Return the most recent value from the specified sequence in the database. This
		/// is supported only on RDBMS brands that support sequences (e.g. Oracle,
		/// PostgreSQL, DB2).  Other RDBMS brands return null.
		/// </summary>
		/// <param>string $sequenceName</param>
		/// <param>integer</param>
		/// <param name="sequenceName"></param>
		public var lastSequenceId(var sequenceName){

			return null;
		}

		/// <summary>
		/// Adds an adapter-specific LIMIT clause to the SELECT statement.
		/// </summary>
		/// <param>string $sql</param>
		/// <param>integer $count</param>
		/// <param>integer $offset</param>
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
		/// Generate a new value from the specified sequence in the database, and return it.
		/// This is supported only on RDBMS brands that support sequences (e.g. Oracle,
		/// PostgreSQL, DB2).  Other RDBMS brands return null.
		/// </summary>
		/// <param>string $sequenceName</param>
		/// <param>integer</param>
		/// <param name="sequenceName"></param>
		public var nextSequenceId(var sequenceName){

			return null;
		}

		/// <summary>
		/// Quote a table identifier and alias.
		/// </summary>
		/// <param>string|array|Zend_Db_Expr $ident The identifier or expression.</param>
		/// <param>string $alias An alias for the table.</param>
		/// <param>string The quoted identifier and alias.</param>
		/// <param name="ident"></param>
		/// <param name="alias"></param>
		/// <param name="auto"></param>
		public var quoteTableAs(var ident, var alias, var auto){

			return null;
		}

	}//end Zend_Db_Adapter_Pdo_Oci

}//end namespace Pdo