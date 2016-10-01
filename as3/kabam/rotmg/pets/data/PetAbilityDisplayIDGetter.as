// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.pets.data.PetAbilityDisplayIDGetter

package kabam.rotmg.pets.data{
    import com.company.assembleegameclient.objects.ObjectLibrary;

    public class PetAbilityDisplayIDGetter {


        public function getID(_arg1:int):String{
            return (ObjectLibrary.getPetDataXMLByType(_arg1).DisplayId);
        }


    }
}//package kabam.rotmg.pets.data

