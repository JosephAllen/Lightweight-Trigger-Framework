/**
 * @description  This is the interface to be implemented by all trigger handler classes.
 *               Simply complete the implemented methods which are required for the trigger.
 *               Leave any events that you do not need blank.
 * @author Chris Aldridge, http://chrisaldridge.com/triggers/lightweight-apex-trigger-framework/
 * @date Jan 4, 2016
 * @author Mark H. Morrison, https://github.com/MarkHMorrison/Lightweight-Trigger-Framework
 * @date Sat Dec 29, 2018
 */
public interface ITriggerHandler {

    void beforeInsert(SObject[] newItems);

    void beforeUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems);

    void beforeDelete(Map<Id, SObject> oldItems);

    void afterInsert(Map<Id, SObject> newItems);

    void afterUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems);

    void afterDelete(Map<Id, SObject> oldItems);

    void afterUndelete(Map<Id, SObject> oldItems);

    // This method needs to be implemented to check whether or not trigger logic should run. You can remove this if this is not a requirement.
    Boolean isDisabled();
}
