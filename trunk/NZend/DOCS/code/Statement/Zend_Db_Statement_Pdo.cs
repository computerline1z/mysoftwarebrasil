///////////////////////////////////////////////////////////
//  Zend_Db_Statement_Pdo.cs
//  Implementation of the Class Zend_Db_Statement_Pdo
//  Generated by Enterprise Architect
//  Created on:      08-jun-2011 22:13:43
//  Original author: alexis
///////////////////////////////////////////////////////////




using Zend.Db;
namespace Zend.Db.Statement {
	/// <summary>
	/// Proxy class to wrap a PDOStatement object. Matches the interface of
	/// PDOStatement.  All methods simply proxy to the matching method in PDOStatement.
	/// PDOExceptions thrown by PDOStatement are re-thrown as
	/// Zend_Db_Statement_Exception.
	///        @category   Zend
	///        @package    Zend_Db
	///        @subpackage Statement
	///        @copyright  Copyright (c) 2005-2010 Zend Technologies USA Inc. (http:
	/// //www.zend.com)
	///        @license    http://framework.zend.com/license/new-bsd     New BSD
	/// License
	/// </summary>
	public class Zend_Db_Statement_Pdo : Zend_Db_Statement, IteratorAggregate {

		/// <summary>
		/// @var int
		/// </summary>
		protected var _fetchMode = PDO::FETCH_ASSOC;

		public Zend_Db_Statement_Pdo(){

		}

		~Zend_Db_Statement_Pdo(){

		}

		public override void Dispose(){

		}

		/// <summary>
		/// Binds a parameter to the specified variable name.
		/// </summary>
		/// <param>mixed $parameter Name the parameter, either integer or string.</param>
		/// <param>mixed $variable  Reference to PHP variable containing the value.
		/// </param>
		/// <param>mixed $type      OPTIONAL Datatype of SQL parameter.</param>
		/// <param>mixed $length    OPTIONAL Length of SQL parameter.</param>
		/// <param>mixed $options   OPTIONAL Other options.</param>
		/// <param>bool</param>
		/// <param name="parameter"></param>
		/// <param name="variable"></param>
		/// <param name="type"></param>
		/// <param name="length"></param>
		/// <param name="options"></param>
		protected var _bindParam(var parameter, ref var variable, var type, var length, var options){

			return null;
		}

		/// <summary>
		/// Executes a prepared statement.
		/// </summary>
		/// <param>array $params OPTIONAL Values to bind to parameter placeholders.
		/// </param>
		/// <param>bool</param>
		/// <param name="params"></param>
		public var _execute(array params){

			return null;
		}

		/// <summary>
		/// Prepare a string SQL statement and create a statement object.
		/// </summary>
		/// <param>string $sql</param>
		/// <param>void</param>
		/// <param name="sql"></param>
		protected var _prepare(var sql){

			return null;
		}

		/// <summary>
		/// Bind a column of the statement result set to a PHP variable.
		/// </summary>
		/// <param>string $column Name the column in the result set, either by position or
		/// by name.</param>
		/// <param>mixed  $param  Reference to the PHP variable containing the value.
		/// </param>
		/// <param>mixed  $type   OPTIONAL</param>
		/// <param>bool</param>
		/// <param name="column"></param>
		/// <param name="param"></param>
		/// <param name="type"></param>
		public var bindColumn(var column, ref var param, var type){

			return null;
		}

		/// <summary>
		/// Binds a value to a parameter.
		/// </summary>
		/// <param>mixed $parameter Name the parameter, either integer or string.</param>
		/// <param>mixed $value     Scalar value to bind to the parameter.</param>
		/// <param>mixed $type      OPTIONAL Datatype of the parameter.</param>
		/// <param>bool</param>
		/// <param name="parameter"></param>
		/// <param name="value"></param>
		/// <param name="type"></param>
		public var bindValue(var parameter, var value, var type){

			return null;
		}

		/// <summary>
		/// Closes the cursor, allowing the statement to be executed again.
		/// </summary>
		/// bool
		public var closeCursor(){

			return null;
		}

		/// <summary>
		/// Returns the number of columns in the result set. Returns null if the statement
		/// has no result set metadata.
		/// </summary>
		/// int The number of columns.
		public var columnCount(){

			return null;
		}

		/// <summary>
		/// Retrieves the error code, if any, associated with the last operation on the
		/// statement handle.
		/// </summary>
		/// string error code.
		public var errorCode(){

			return null;
		}

		/// <summary>
		/// Retrieves an array of error information, if any, associated with the last
		/// operation on the statement handle.
		/// </summary>
		/// array
		public var errorInfo(){

			return null;
		}

		/// <summary>
		/// Fetches a row from the result set.
		/// </summary>
		/// <param>int $style  OPTIONAL Fetch mode for this fetch operation.</param>
		/// <param>int $cursor OPTIONAL Absolute, relative, or other.</param>
		/// <param>int $offset OPTIONAL Number for absolute or relative cursors.</param>
		/// <param>mixed Array, object, or scalar depending on fetch mode.</param>
		/// <param name="style"></param>
		/// <param name="cursor"></param>
		/// <param name="offset"></param>
		public var fetch(var style, var cursor, var offset){

			return null;
		}

		/// <summary>
		/// Returns an array containing all of the result set rows.
		/// </summary>
		/// <param>int $style OPTIONAL Fetch mode.</param>
		/// <param>int $col   OPTIONAL Column number, if fetch mode is by column.</param>
		/// <param>array Collection of rows, each in a format by the fetch mode.</param>
		/// <param name="style"></param>
		/// <param name="col"></param>
		public var fetchAll(var style, var col){

			return null;
		}

		/// <summary>
		/// Returns a single column from the next row of a result set.
		/// </summary>
		/// <param>int $col OPTIONAL Position of the column to fetch.</param>
		/// <param>string</param>
		/// <param name="col"></param>
		public var fetchColumn(var col){

			return null;
		}

		/// <summary>
		/// Fetches the next row and returns it as an object.
		/// </summary>
		/// <param>string $class  OPTIONAL Name of the class to create.</param>
		/// <param>array  $config OPTIONAL Constructor arguments for the class.</param>
		/// <param>mixed One object instance of the specified class.</param>
		/// <param name="class"></param>
		/// <param name="config"></param>
		public var fetchObject(var class, array config){

			return null;
		}

		/// <summary>
		/// Retrieve a statement attribute.
		/// </summary>
		/// <param>integer $key Attribute name.</param>
		/// <param>mixed      Attribute value.</param>
		/// <param name="key"></param>
		public var getAttribute(var key){

			return null;
		}

		/// <summary>
		/// Returns metadata for a column in a result set.
		/// </summary>
		/// <param>int $column</param>
		/// <param>mixed</param>
		/// <param name="column"></param>
		public var getColumnMeta(var column){

			return null;
		}

		/// <summary>
		/// Required by IteratorAggregate interface
		/// </summary>
		/// IteratorIterator
		public var getIterator(){

			return null;
		}

		/// <summary>
		/// Retrieves the next rowset (result set) for a SQL statement that has multiple
		/// result sets.  An example is a stored procedure that returns the results of
		/// multiple queries.
		/// </summary>
		/// bool
		public var nextRowset(){

			return null;
		}

		/// <summary>
		/// Returns the number of rows affected by the execution of the last INSERT, DELETE,
		/// or UPDATE statement executed by this statement object.
		/// </summary>
		/// int     The number of rows affected.
		public var rowCount(){

			return null;
		}

		/// <summary>
		/// Set a statement attribute.
		/// </summary>
		/// <param>string $key Attribute name.</param>
		/// <param>mixed  $val Attribute value.</param>
		/// <param>bool</param>
		/// <param name="key"></param>
		/// <param name="val"></param>
		public var setAttribute(var key, var val){

			return null;
		}

		/// <summary>
		/// Set the default fetch mode for this statement.
		/// </summary>
		/// <param>int   $mode The fetch mode.</param>
		/// <param>bool</param>
		/// <param name="mode"></param>
		public var setFetchMode(var mode){

			return null;
		}

	}//end Zend_Db_Statement_Pdo

}//end namespace Statement