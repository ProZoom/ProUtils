package com.top.core.delegates.web.event;

import java.util.HashMap;

/**
 * 作者：ProZoom
 * 时间：2018/11/1
 * 描述：
 */
public class EventManager {

    private static final HashMap<String,Event> EVENTS=new HashMap<>();

    private EventManager() {
    }

    private static class Holder{
        private static final EventManager INSTANCE=new EventManager();
    }

    public static EventManager getInstance(){
        return Holder.INSTANCE;
    }

    public EventManager addEvent(String name, Event event){
        EVENTS.put(name,event);
        return this;
    }

    public Event createEvent(String action){
        final Event event=EVENTS.get(action);
        if (event==null) {
            return new UndefineEvent();
        }
        return event;
    }
}
