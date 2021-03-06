package flat2d.core
{
	import starling.display.Sprite;
	import starling.events.Event;
	
	/**
	 * FlatState.as
	 * Created On:	22/01/2013 19:55
	 * Author:		Joshua Barnett
	 */
	
	public class FlatState extends Sprite
	{
		private var _destroying:Boolean;
		private var _game:FlatGame;
		
		public function FlatState(game:FlatGame)
		{
			_destroying	= false;
			_game 		= game;
			addEventListener(Event.ADDED_TO_STAGE, onAdded);
		}
		
		private function onAdded(e:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAdded);
			initialize();
		}
		
		protected function initialize():void
		{
		
		}
		
		public function update():void
		{
		
		}
		
		public function get game():FlatGame
		{
			return _game;
		}
		
		public function get destroying():Boolean 
		{
			return _destroying;
		}
		
		public function destroy():void
		{
			_destroying	= true;
		}
	}
}