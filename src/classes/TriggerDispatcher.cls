/**
 * @description  This class runs the appropriate methods on the trigger handler based on the current trigger context.
 * @author Chris Aldridge, http://chrisaldridge.com/triggers/lightweight-apex-trigger-framework/
 * @date Dec 31, 2015
 * @author Sep 25 by krigi, https://github.com/krigi/Lightweight-Trigger-Framework , 
 *                          Updated by krigi to take advantage of Summer’18 features: Apex switch statement and Trigger.operationType context variable
 * @date Sep 25, 2018
 * @author Mark H. Morrison, https://github.com/MarkHMorrison/Lightweight-Trigger-Framework
 * @date Sat Dec 29, 2018
 *
 * @date Nov 7, 2019
 * @author Ramesh Dugar, updated trigger logic to separate the IsBefore and IsAfter triggers.
 * 
 */
public class TriggerDispatcher {
  /*
    Call this method from your trigger, passing in an instance of a trigger handler which implements ITriggerHandler.
    This method will fire the appropriate methods on the handler depending on the trigger context.
  */
  public static void Run(ITriggerHandler handler, System.TriggerOperation triggerEvent)
  {
    // Check to see if the trigger has been disabled. If it has, return
    if(handler.IsDisabled())
      return;

    // Detect the current trigger context and fire the relevant methods on the trigger handler:
  
    // Before trigger logic
    if (Trigger.IsBefore )
    {
        if (Trigger.IsInsert)
            handler.BeforeInsert(trigger.new);

        if (Trigger.IsUpdate)
            handler.BeforeUpdate(trigger.newMap, trigger.oldMap);

        if (Trigger.IsDelete)
            handler.BeforeDelete(trigger.oldMap);
    }
      
    // After trigger logic
    if (Trigger.IsAfter)
    {
        if (Trigger.IsInsert)
            handler.AfterInsert(Trigger.newMap);

        if (Trigger.IsUpdate)
            handler.AfterUpdate(trigger.newMap, trigger.oldMap);

        if (trigger.IsDelete)
            handler.AfterDelete(trigger.oldMap);

        if (trigger.isUndelete)
            handler.AfterUndelete(trigger.oldMap);
    }
  }
}
