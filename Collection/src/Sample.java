import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class Sample {


	public static void main(String[] args) {
		List<String>list=new ArrayList<String>();

		list.add("1");
		list.add("2");
		list.add("3");
		list.add("4");
		list.add("5");

		for(int i=0;i<list.size()-1;i++){
			System.out.println(list.get(i));
		}

		for(String s:list){
			System.out.println(s);
		}


		Map<String,String>map=new HashMap<String,String>();

		map.put("key1", "value1");
		map.put("key2", "value2");
		map.put("key3", "value3");
		map.put("key4", "value4");
		map.put("key5", "value5");

		String value=map.get("key1");
		System.out.println(value);

		String valueNull=map.get("key6");
		System.out.println(valueNull);

		if(map.containsKey("key1")){
			System.out.println("key1は存在します");
		}else{
			System.out.println("key1は存在しません");
		}

		for(Map.Entry<String,String>e:map.entrySet()){
			System.out.println(e.getKey()+":"+e.getValue());
		}


		Set<String>set=new HashSet<String>();

		set.add("value1");
		set.add("value2");
		set.add("value3");
		set.add("value4");
		set.add("value5");

		set.add("value2");

		for(String s:set){
			System.out.println(s);
		}
	}

}
