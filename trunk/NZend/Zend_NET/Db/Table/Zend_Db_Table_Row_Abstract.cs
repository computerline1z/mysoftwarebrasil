///////////////////////////////////////////////////////////
//  Zend_Db_Table_Row_Abstract.cs
//  Implementation of the Class Zend_Db_Table_Row_Abstract
//  Generated by Enterprise Architect
//  Created on:      08-jun-2011 22:13:44
//  Original author: alexis
///////////////////////////////////////////////////////////




using Zend.Db.Table;
namespace Zend.Db.Table.Row {
	/// <summary>
	/// @category   Zend
	///          @package    Zend_Db
	///          @subpackage Table
	///          @copyright  Copyright (c) 2005-2010 Zend Technologies USA Inc. (http:
	/// //www.zend.com)
	///          @license    http://framework.zend.com/license/new-bsd     New BSD
	/// License
	/// </summary>
	public abstract class Zend_Db_Table_Row_Abstract : ArrayAccess, IteratorAggregate {

		/// <summary>
		/// This is set to a copy of $_data when the data is fetched from a database,
		/// specified as a new tuple in the constructor, or when dirty data is posted to
		/// the database with save().
		///            @var array
		/// </summary>
		protected var _cleanData = array();
		/// <summary>
		/// Connected is true if we have a reference to a live Zend_Db_Table_Abstract
		/// object. This is false after the Rowset has been deserialized.
		///            @var boolean
		/// </summary>
		protected var _connected = true;
		/// <summary>
		/// The data for each column in the row (column_name => value). The keys must match
		/// the physical names of columns in the table for which this row is defined.
		///            @var array
		/// </summary>
		protected var _data = array();
		/// <summary>
		/// Tracks columns where data has been updated. Allows more specific insert and
		/// update operations.
		///            @var array
		/// </summary>
		protected var _modifiedFields = array();
		/// <summary>
		/// Primary row key(s).
		///            @var array
		/// </summary>
		protected var _primary;
		/// <summary>
		/// A row is marked read only if it contains columns that are not physically
		/// represented within the database schema (e.g. evaluated columns/Zend_Db_Expr
		/// columns). This can also be passed as a run-time config options as a means of
		/// protecting row data.
		///            @var boolean
		/// </summary>
		protected var _readOnly = false;
		/// <summary>
		/// Zend_Db_Table_Abstract parent class or instance.
		///            @var Zend_Db_Table_Abstract
		/// </summary>
		protected var _table = null;
		/// <summary>
		/// Name of the class of the Zend_Db_Table_Abstract object.
		///            @var string
		/// </summary>
		protected var _tableClass = null;

		public Zend_Db_Table_Row_Abstract(){

		}

		~Zend_Db_Table_Row_Abstract(){

		}

		public virtual void Dispose(){

		}

		/// <summary>
		/// Turn magic function calls into non-magic function calls to the above methods.
		/// </summary>
		/// <param>string $method</param>
		/// <param>array $args OPTIONAL Zend_Db_Table_Select query modifier</param>
		/// <param>Zend_Db_Table_Row_Abstract|Zend_Db_Table_Rowset_Abstract</param>
		/// <param name="method"></param>
		/// <param name="args"></param>
		public var __call(var method, array args){

			return null;
		}

		/// <summary>
		/// Constructor.  Supported params for $config are:- - table       = class name or
		/// object of type Zend_Db_Table_Abstract - data        = values of columns in this
		/// row.
		/// </summary>
		/// <param>array $config OPTIONAL Array of user-specified config options.</param>
		/// <param>void</param>
		/// <param name="config"></param>
		public var __construct(array config){

			return null;
		}

		/// <summary>
		/// Retrieve row field value
		/// </summary>
		/// <param>string $columnName The user-specified column name.</param>
		/// <param>string             The corresponding column value.</param>
		/// <param name="columnName"></param>
		public var __get(var columnName){

			return null;
		}

		/// <summary>
		/// Test existence of row field
		/// </summary>
		/// <param>string  $columnName   The column key.</param>
		/// <param>boolean</param>
		/// <param name="columnName"></param>
		public var __isset(var columnName){

			return null;
		}

		/// <summary>
		/// Set row field value
		/// </summary>
		/// <param>string $columnName The column key.</param>
		/// <param>mixed  $value      The value for the property.</param>
		/// <param>void</param>
		/// <param name="columnName"></param>
		/// <param name="value"></param>
		public var __set(var columnName, var value){

			return null;
		}

		/// <summary>
		/// Store table, primary key and data in serialized object
		/// </summary>
		/// array
		public var __sleep(){

			return null;
		}

		/// <summary>
		/// Unset row field value
		/// </summary>
		/// <param>string $columnName The column key.</param>
		/// <param>Zend_Db_Table_Row_Abstract</param>
		/// <param name="columnName"></param>
		public var __unset(var columnName){

			return null;
		}

		/// <summary>
		/// Setup to do on wakeup. A de-serialized Row should not be assumed to have access
		/// to a live database connection, so set _connected = false.
		/// </summary>
		/// void
		public var __wakeup(){

			return null;
		}

		/// <summary>
		/// Allows pre-delete logic to be applied to row. Subclasses may override this
		/// method.
		/// </summary>
		/// void
		protected var _delete(){

			return null;
		}

		/// <summary>
		/// @return mixed The primary key value(s), as an associative array if the key is
		/// compound, or a scalar if the key is single-column.
		/// </summary>
		protected var _doInsert(){

			return null;
		}

		/// <summary>
		/// @return mixed The primary key value(s), as an associative array if the key is
		/// compound, or a scalar if the key is single-column.
		/// </summary>
		protected var _doUpdate(){

			return null;
		}

		/// <summary>
		/// Retrieves an associative array of primary keys.
		/// </summary>
		/// <param>bool $useDirty</param>
		/// <param>array</param>
		/// <param name="useDirty"></param>
		protected var _getPrimaryKey(var useDirty){

			return null;
		}

		/// <summary>
		/// Retrieves an instance of the parent table.
		/// </summary>
		/// Zend_Db_Table_Abstract
		protected var _getTable(){

			return null;
		}

		/// <summary>
		/// _getTableFromString
		/// </summary>
		/// <param>string $tableName</param>
		/// <param>Zend_Db_Table_Abstract</param>
		/// <param name="tableName"></param>
		protected var _getTableFromString(var tableName){

			return null;
		}

		/// <summary>
		/// Constructs where statement for retrieving row(s).
		/// </summary>
		/// <param>bool $useDirty</param>
		/// <param>array</param>
		/// <param name="useDirty"></param>
		protected var _getWhereQuery(var useDirty){

			return null;
		}

		/// <summary>
		/// Allows pre-insert logic to be applied to row. Subclasses may override this
		/// method.
		/// </summary>
		/// void
		protected var _insert(){

			return null;
		}

		/// <summary>
		/// Allows post-delete logic to be applied to row. Subclasses may override this
		/// method.
		/// </summary>
		/// void
		protected var _postDelete(){

			return null;
		}

		/// <summary>
		/// Allows post-insert logic to be applied to row. Subclasses may override this
		/// method.
		/// </summary>
		/// void
		protected var _postInsert(){

			return null;
		}

		/// <summary>
		/// Allows post-update logic to be applied to row. Subclasses may override this
		/// method.
		/// </summary>
		/// void
		protected var _postUpdate(){

			return null;
		}

		/// <summary>
		/// Prepares a table reference for lookup.  Ensures all reference keys are set and
		/// properly formatted.
		/// </summary>
		/// <param>Zend_Db_Table_Abstract $dependentTable</param>
		/// <param>Zend_Db_Table_Abstract $parentTable</param>
		/// <param>string                 $ruleKey</param>
		/// <param>array</param>
		/// <param name="dependentTable"></param>
		/// <param name="parentTable"></param>
		/// <param name="ruleKey"></param>
		protected var _prepareReference(Zend_Db_Table_Abstract dependentTable, Zend_Db_Table_Abstract parentTable, var ruleKey){

			return null;
		}

		/// <summary>
		/// Refreshes properties from the database.
		/// </summary>
		/// void
		protected var _refresh(){

			return null;
		}

		/// <summary>
		/// Transform a column name from the user-specified form to the physical form used
		/// in the database. You can override this method in a custom Row class to
		/// implement column name mappings, for example inflection.
		/// </summary>
		/// <param>string $columnName Column name given.</param>
		/// <param>string The column name after transformation applied (none by default).
		/// </param>
		/// <param name="columnName"></param>
		protected var _transformColumn(var columnName){

			return null;
		}

		/// <summary>
		/// Allows pre-update logic to be applied to row. Subclasses may override this
		/// method.
		/// </summary>
		/// void
		protected var _update(){

			return null;
		}

		/// <summary>
		/// Deletes existing rows.
		/// </summary>
		/// int The number of rows deleted.
		public var delete(){

			return null;
		}

		/// <summary>
		/// Query a dependent table to retrieve rows matching the current row.
		/// </summary>
		/// <param>string|Zend_Db_Table_Abstract  $dependentTable</param>
		/// <param>string                         OPTIONAL $ruleKey</param>
		/// <param>Zend_Db_Table_Select           OPTIONAL $select</param>
		/// <param>Zend_Db_Table_Rowset_Abstract Query result from $dependentTable</param>
		/// <param name="dependentTable"></param>
		/// <param name="ruleKey"></param>
		/// <param name="select"></param>
		public var findDependentRowset(var dependentTable, var ruleKey, Zend_Db_Table_Select select){

			return null;
		}

		/// <summary>
		/// @param  string|Zend_Db_Table_Abstract  $matchTable
		///            @param  string|Zend_Db_Table_Abstract  $intersectionTable
		///            @param  string                         OPTIONAL $callerRefRule
		///            @param  string                         OPTIONAL $matchRefRule
		///            @param  Zend_Db_Table_Select           OPTIONAL $select
		///            @return Zend_Db_Table_Rowset_Abstract Query result from $matchTable
		/// </summary>
		/// <param name="matchTable"></param>
		/// <param name="intersectionTable"></param>
		/// <param name="callerRefRule"></param>
		/// <param name="matchRefRule"></param>
		/// <param name="select"></param>
		public var findManyToManyRowset(var matchTable, var intersectionTable, var callerRefRule, var matchRefRule, Zend_Db_Table_Select select){

			return null;
		}

		/// <summary>
		/// Query a parent table to retrieve the single row matching the current row.
		/// </summary>
		/// <param>string|Zend_Db_Table_Abstract $parentTable</param>
		/// <param>string                        OPTIONAL $ruleKey</param>
		/// <param>Zend_Db_Table_Select          OPTIONAL $select</param>
		/// <param>Zend_Db_Table_Row_Abstract   Query result from $parentTable</param>
		/// <param name="parentTable"></param>
		/// <param name="ruleKey"></param>
		/// <param name="select"></param>
		public var findParentRow(var parentTable, var ruleKey, Zend_Db_Table_Select select){

			return null;
		}

		public var getIterator(){

			return null;
		}

		/// <summary>
		/// Returns the table object, or null if this is disconnected row
		/// </summary>
		/// Zend_Db_Table_Abstract|null
		public var getTable(){

			return null;
		}

		/// <summary>
		/// Query the class name of the Table object for which this Row was created.
		/// </summary>
		/// string
		public var getTableClass(){

			return null;
		}

		/// <summary>
		/// Initialize object  Called from {@link __construct()} as final step of object
		/// instantiation.
		///            @return void
		/// </summary>
		public var init(){

			return null;
		}

		/// <summary>
		/// Test the connected status of the row.
		/// </summary>
		/// boolean
		public var isConnected(){

			return null;
		}

		/// <summary>
		/// Test the read-only status of the row.
		/// </summary>
		/// boolean
		public var isReadOnly(){

			return null;
		}

		/// <summary>
		/// Proxy to __isset Required by the ArrayAccess implementation
		/// </summary>
		/// <param>string $offset</param>
		/// <param>boolean</param>
		/// <param name="offset"></param>
		public var offsetExists(var offset){

			return null;
		}

		/// <summary>
		/// Proxy to __get Required by the ArrayAccess implementation
		/// </summary>
		/// <param>string $offset</param>
		/// <param>string</param>
		/// <param name="offset"></param>
		public var offsetGet(var offset){

			return null;
		}

		/// <summary>
		/// Proxy to __set Required by the ArrayAccess implementation
		/// </summary>
		/// <param>string $offset</param>
		/// <param>mixed $value</param>
		/// <param name="offset"></param>
		/// <param name="value"></param>
		public var offsetSet(var offset, var value){

			return null;
		}

		/// <summary>
		/// Proxy to __unset Required by the ArrayAccess implementation
		/// </summary>
		/// <param>string $offset</param>
		/// <param name="offset"></param>
		public var offsetUnset(var offset){

			return null;
		}

		/// <summary>
		/// Refreshes properties from the database.
		/// </summary>
		/// void
		public var refresh(){

			return null;
		}

		/// <summary>
		/// Saves the properties to the database.  This performs an intelligent
		/// insert/update, and reloads the properties with fresh data from the table on
		/// success.
		/// </summary>
		/// mixed The primary key value(s), as an associative array if the key is compound,
		/// or a scalar if the key is single-column.
		public var save(){

			return null;
		}

		/// <summary>
		/// Returns an instance of the parent table's Zend_Db_Table_Select object.
		/// </summary>
		/// Zend_Db_Table_Select
		public var select(){

			return null;
		}

		/// <summary>
		/// Sets all data in the row from an array.
		/// </summary>
		/// <param>array $data</param>
		/// <param>Zend_Db_Table_Row_Abstract Provides a fluent interface</param>
		/// <param name="data"></param>
		public var setFromArray(array data){

			return null;
		}

		/// <summary>
		/// Set the read-only status of the row.
		/// </summary>
		/// <param>boolean $flag</param>
		/// <param>boolean</param>
		/// <param name="flag"></param>
		public var setReadOnly(var flag){

			return null;
		}

		/// <summary>
		/// Set the table object, to re-establish a live connection to the database for a
		/// Row that has been de-serialized.
		/// </summary>
		/// <param>Zend_Db_Table_Abstract $table</param>
		/// <param>boolean</param>
		/// <param name="table"></param>
		public var setTable(Zend_Db_Table_Abstract table){

			return null;
		}

		/// <summary>
		/// Returns the column/value data as an array.
		/// </summary>
		/// array
		public var toArray(){

			return null;
		}

	}//end Zend_Db_Table_Row_Abstract

}//end namespace Row