///////////////////////////////////////////////////////////
//  Zend_Db_Profiler_Firebug.cs
//  Implementation of the Class Zend_Db_Profiler_Firebug
//  Generated by Enterprise Architect
//  Created on:      08-jun-2011 22:13:26
//  Original author: alexis
///////////////////////////////////////////////////////////




using Zend.Db;
namespace Zend.Db.Profiler {
	/// <summary>
	/// Writes DB events as log messages to the Firebug Console via FirePHP.
	///        @category   Zend
	///        @package    Zend_Db
	///        @subpackage Profiler
	///        @copyright  Copyright (c) 2005-2010 Zend Technologies USA Inc. (http:
	/// //www.zend.com)
	///        @license    http://framework.zend.com/license/new-bsd     New BSD
	/// License
	/// </summary>
	public class Zend_Db_Profiler_Firebug : Zend_Db_Profiler {

		/// <summary>
		/// The original label for this profiler.
		///          @var string
		/// </summary>
		protected var _label = null;
		/// <summary>
		/// The label template for this profiler
		///          @var string
		/// </summary>
		protected var _label_template = '%label% (%totalCount% @ %totalDuration% sec)';
		/// <summary>
		/// The message envelope holding the profiling summary
		///          @var Zend_Wildfire_Plugin_FirePhp_TableMessage
		/// </summary>
		protected var _message = null;
		/// <summary>
		/// The total time taken for all profiled queries.
		///          @var float
		/// </summary>
		protected var _totalElapsedTime = 0;

		public Zend_Db_Profiler_Firebug(){

		}

		~Zend_Db_Profiler_Firebug(){

		}

		public override void Dispose(){

		}

		/// <summary>
		/// Constructor
		/// </summary>
		/// <param>string $label OPTIONAL Label for the profiling info.</param>
		/// <param>void</param>
		/// <param name="label"></param>
		public var __construct(var label){

			return null;
		}

		/// <summary>
		/// Intercept the query end and log the profiling data.
		/// </summary>
		/// <param>integer $queryId</param>
		/// <param>void</param>
		/// <param name="queryId"></param>
		public var queryEnd(var queryId){

			return null;
		}

		/// <summary>
		/// Enable or disable the profiler.  If $enable is false, the profiler is disabled
		/// and will not log any queries sent to it.
		/// </summary>
		/// <param>boolean $enable</param>
		/// <param>Zend_Db_Profiler Provides a fluent interface</param>
		/// <param name="enable"></param>
		public var setEnabled(var enable){

			return null;
		}

		/// <summary>
		/// Update the label of the message holding the profile info.
		/// </summary>
		/// void
		protected var updateMessageLabel(){

			return null;
		}

	}//end Zend_Db_Profiler_Firebug

}//end namespace Profiler