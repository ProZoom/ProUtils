
## 自定义View

```flow

st=>start: Start
op=>operation: Your Operation
cond=>condition: Yes or No?
e=>end
st->op->cond
cond(yes)->e
cond(no)->op
```

### 几个重要函数

#### 构造函数

构造函数是View的入口，可以用于初始化一些的内容，和获取自定义属性。

```java

public void MyView(Context context) {}
public void MyView(Context context, AttributeSet attrs) {}
public void MyView(Context context, AttributeSet attrs, int defStyleAttr) {}
public void MyView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {}

```

#### onMeasure()

#### onSizeChanged()

#### onLayout()

#### onDraw()



## 自定义ViewGroup