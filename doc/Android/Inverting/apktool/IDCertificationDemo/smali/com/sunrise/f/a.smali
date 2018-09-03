.class public Lcom/sunrise/f/a;
.super Ljava/lang/Object;


# static fields
.field static final b:Ljava/lang/String;

.field static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;

.field static final e:Ljava/lang/String;

.field static final f:Ljava/lang/String;

.field static final g:Ljava/lang/String;

.field static final h:Ljava/lang/String;

.field static final i:Ljava/lang/String;

.field static final j:Ljava/lang/String;


# instance fields
.field protected final a:Lcom/sunrise/h/a;

.field private final k:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/sunrise/f/af;

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-class v0, Lcom/sunrise/f/ap;

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunrise/f/a;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sunrise/f/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunrise/f/a;->d:Ljava/lang/String;

    const-class v0, Lcom/sunrise/f/az;

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunrise/f/a;->f:Ljava/lang/String;

    const-class v0, Lcom/sunrise/f/ag;

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sunrise/f/ag;

    invoke-static {v1}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunrise/f/a;->h:Ljava/lang/String;

    const-class v0, Lcom/sunrise/f/au;

    invoke-static {v0}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunrise/f/a;->i:Ljava/lang/String;

    const-class v0, Lcom/sunrise/f/ay;

    invoke-static {v0}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunrise/f/a;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sunrise/h/a;

    invoke-direct {v0}, Lcom/sunrise/h/a;-><init>()V

    iput-object v0, p0, Lcom/sunrise/f/a;->a:Lcom/sunrise/h/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sunrise/f/a;->k:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;)V
    .locals 5

    const/16 v1, 0x19

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Lcom/sunrise/c/f;->b(II)V

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/sunrise/c/f;->b(II)V

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x15

    const-string v1, "seperator"

    invoke-virtual {p2, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    const-string v2, "writeBefore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";Ljava/lang/Object;C)C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x36

    const-string v1, "seperator"

    invoke-virtual {p2, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    return-void
.end method

.method private a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;Lcom/sunrise/h/c;)V
    .locals 6

    const/16 v5, 0xc0

    const/16 v2, 0x19

    iget-object v0, p3, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const-string v1, "entity"

    invoke-virtual {p2, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/sunrise/c/f;->b(II)V

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const/16 v2, 0xb6

    invoke-static {v1}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/sunrise/h/b;->a(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v1, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p3, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p3, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "entity"

    invoke-virtual {p2, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/sunrise/c/f;->b(II)V

    iget-object v0, p3, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    const/16 v1, 0xb4

    iget-object v2, p3, Lcom/sunrise/h/c;->f:Ljava/lang/Class;

    invoke-static {v2}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p3, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p3, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V
    .locals 6

    const/4 v5, 0x2

    const/16 v4, 0x15

    const/16 v3, 0xb8

    const/16 v2, 0x19

    iget-object v0, p2, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1}, Lcom/sunrise/c/f;->b(II)V

    const/4 v1, 0x1

    invoke-interface {p1, v2, v1}, Lcom/sunrise/c/f;->b(II)V

    invoke-interface {p1, v2, v5}, Lcom/sunrise/c/f;->b(II)V

    sget v1, Lcom/sunrise/f/b;->a:I

    invoke-interface {p1, v2, v1}, Lcom/sunrise/c/f;->b(II)V

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const-string v0, "byte"

    invoke-virtual {p3, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/sunrise/c/f;->b(II)V

    const-string v0, "java/lang/Byte"

    const-string v1, "valueOf"

    const-string v2, "(B)Ljava/lang/Byte;"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    const-string v2, "apply"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    const-string v0, "short"

    invoke-virtual {p3, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/sunrise/c/f;->b(II)V

    const-string v0, "java/lang/Short"

    const-string v1, "valueOf"

    const-string v2, "(S)Ljava/lang/Short;"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    const-string v0, "int"

    invoke-virtual {p3, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/sunrise/c/f;->b(II)V

    const-string v0, "java/lang/Integer"

    const-string v1, "valueOf"

    const-string v2, "(I)Ljava/lang/Integer;"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    const-string v0, "char"

    invoke-virtual {p3, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/sunrise/c/f;->b(II)V

    const-string v0, "java/lang/Character"

    const-string v1, "valueOf"

    const-string v2, "(C)Ljava/lang/Character;"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    const/16 v0, 0x16

    const-string v1, "long"

    invoke-virtual {p3, v1, v5}, Lcom/sunrise/f/b;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const-string v0, "java/lang/Long"

    const-string v1, "valueOf"

    const-string v2, "(J)Ljava/lang/Long;"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    const/16 v0, 0x17

    const-string v1, "float"

    invoke-virtual {p3, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const-string v0, "java/lang/Float"

    const-string v1, "valueOf"

    const-string v2, "(F)Ljava/lang/Float;"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    const/16 v0, 0x18

    const-string v1, "double"

    invoke-virtual {p3, v1, v5}, Lcom/sunrise/f/b;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const-string v0, "java/lang/Double"

    const-string v1, "valueOf"

    const-string v2, "(D)Ljava/lang/Double;"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    const-string v0, "boolean"

    invoke-virtual {p3, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/sunrise/c/f;->b(II)V

    const-string v0, "java/lang/Boolean"

    const-string v1, "valueOf"

    const-string v2, "(Z)Ljava/lang/Boolean;"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_8

    const-string v0, "decimal"

    invoke-virtual {p3, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0

    :cond_8
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_9

    const-string v0, "string"

    invoke-virtual {p3, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "enum"

    invoke-virtual {p3, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0

    :cond_a
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "list"

    invoke-virtual {p3, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "object"

    invoke-virtual {p3, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0
.end method

.method private a(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V
    .locals 4

    iget-object v0, p2, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    const-string v1, "out"

    invoke-virtual {p3, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    sget-object v0, Lcom/sunrise/f/ba;->k:Lcom/sunrise/f/ba;

    iget v0, v0, Lcom/sunrise/f/ba;->C:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v2, "isEnabled"

    const-string v3, "(I)Z"

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9a

    invoke-interface {p1, v0, p4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sunrise/f/a;->e(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    invoke-static {p3}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V

    const/16 v0, 0x99

    invoke-interface {p1, v0, p4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sunrise/f/a;->b(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sunrise/f/a;->f(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    goto :goto_0
.end method

.method private a(Lcom/sunrise/f/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;)V
    .locals 9

    const/16 v8, 0xb4

    const/4 v7, 0x0

    const/16 v6, 0x19

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    invoke-interface {p2, v6, v7}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {p1}, Lcom/sunrise/f/b;->d(Lcom/sunrise/f/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_asm_ser_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sunrise/f/a;->d:Ljava/lang/String;

    invoke-interface {p2, v8, v1, v2, v3}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc7

    invoke-interface {p2, v1, v0}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p2, v6, v7}, Lcom/sunrise/c/f;->b(II)V

    const/4 v1, 0x1

    invoke-interface {p2, v6, v1}, Lcom/sunrise/c/f;->b(II)V

    iget-object v1, p3, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-static {v1}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v1, 0xb6

    sget-object v2, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v3, "getObjectWriter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(Ljava/lang/Class;)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sunrise/f/a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb5

    invoke-static {p1}, Lcom/sunrise/f/b;->d(Lcom/sunrise/f/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm_ser_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sunrise/f/a;->d:Ljava/lang/String;

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    invoke-interface {p2, v6, v7}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {p1}, Lcom/sunrise/f/b;->d(Lcom/sunrise/f/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_asm_ser_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sunrise/f/a;->d:Ljava/lang/String;

    invoke-interface {p2, v8, v0, v1, v2}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sunrise/f/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Ljava/lang/Class;)V
    .locals 9

    const/16 v8, 0xb4

    const/4 v7, 0x0

    const/16 v6, 0x19

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    invoke-interface {p2, v6, v7}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {p1}, Lcom/sunrise/f/b;->d(Lcom/sunrise/f/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_asm_list_item_ser_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sunrise/f/a;->d:Ljava/lang/String;

    invoke-interface {p2, v8, v1, v2, v3}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc7

    invoke-interface {p2, v1, v0}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p2, v6, v7}, Lcom/sunrise/c/f;->b(II)V

    const/4 v1, 0x1

    invoke-interface {p2, v6, v1}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {p4}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v1, 0xb6

    sget-object v2, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v3, "getObjectWriter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(Ljava/lang/Class;)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sunrise/f/a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb5

    invoke-static {p1}, Lcom/sunrise/f/b;->d(Lcom/sunrise/f/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm_list_item_ser_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sunrise/f/a;->d:Ljava/lang/String;

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    invoke-interface {p2, v6, v7}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {p1}, Lcom/sunrise/f/b;->d(Lcom/sunrise/f/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_asm_list_item_ser_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sunrise/f/a;->d:Ljava/lang/String;

    invoke-interface {p2, v8, v0, v1, v2}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Class;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V
    .locals 3

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/sunrise/f/a;->b(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    invoke-direct {p0, p2, p4, p3}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;Lcom/sunrise/h/c;)V

    const/16 v1, 0x3a

    const-string v2, "object"

    invoke-virtual {p4, v2}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/sunrise/f/a;->d(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    return-void
.end method

.method private a(Ljava/lang/Class;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;IC)V
    .locals 6

    const/16 v3, 0x19

    const/16 v2, 0x15

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/sunrise/f/a;->b(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    invoke-direct {p0, p2, p4, p3}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;Lcom/sunrise/h/c;)V

    const/16 v1, 0x36

    invoke-interface {p2, v1, p5}, Lcom/sunrise/c/f;->b(II)V

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/sunrise/c/f;->b(II)V

    const-string v1, "seperator"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v2, v1}, Lcom/sunrise/c/f;->b(II)V

    sget v1, Lcom/sunrise/f/b;->a:I

    invoke-interface {p2, v3, v1}, Lcom/sunrise/c/f;->b(II)V

    invoke-interface {p2, v2, p5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xb6

    sget-object v2, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v3, "writeFieldValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(CLjava/lang/String;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lcom/sunrise/f/a;->d(Lcom/sunrise/c/f;Lcom/sunrise/f/b;)V

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    return-void
.end method

.method private a(Ljava/lang/Class;Lcom/sunrise/c/f;[Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v5, 0x19

    const-string v6, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x10

    const/16 v6, 0x5b

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v7, "write"

    const-string v8, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v8}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p3

    array-length v9, v0

    if-nez v9, :cond_1

    const/16 v5, 0x19

    const-string v6, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x10

    const/16 v6, 0x5d

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v7, "write"

    const-string v8, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v8}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v5, 0x0

    move v8, v5

    :goto_0
    if-ge v8, v9, :cond_0

    add-int/lit8 v5, v9, -0x1

    if-ne v8, v5, :cond_3

    const/16 v5, 0x5d

    move v7, v5

    :goto_1
    aget-object v10, p3, v8

    iget-object v5, v10, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    iget-object v6, v10, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v6, 0x3a

    sget v11, Lcom/sunrise/f/b;->a:I

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v11}, Lcom/sunrise/c/f;->b(II)V

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_2

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_4

    :cond_2
    const/16 v5, 0x19

    const-string v6, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x59

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/sunrise/c/f;->a(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;Lcom/sunrise/h/c;)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v10, "writeInt"

    const-string v11, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v10, v11}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v7, "write"

    const-string v10, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v10}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_0

    :cond_3
    const/16 v5, 0x2c

    move v7, v5

    goto :goto_1

    :cond_4
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_5

    const/16 v5, 0x19

    const-string v6, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x59

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/sunrise/c/f;->a(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;Lcom/sunrise/h/c;)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v10, "writeLong"

    const-string v11, "(J)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v10, v11}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v7, "write"

    const-string v10, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v10}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_6

    const/16 v5, 0x19

    const-string v6, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x59

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/sunrise/c/f;->a(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;Lcom/sunrise/h/c;)V

    const/4 v5, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/sunrise/c/f;->a(I)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v10, "writeFloat"

    const-string v11, "(FZ)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v10, v11}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v7, "write"

    const-string v10, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v10}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_7

    const/16 v5, 0x19

    const-string v6, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x59

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/sunrise/c/f;->a(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;Lcom/sunrise/h/c;)V

    const/4 v5, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/sunrise/c/f;->a(I)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v10, "writeDouble"

    const-string v11, "(DZ)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v10, v11}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v7, "write"

    const-string v10, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v10}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_8

    const/16 v5, 0x19

    const-string v6, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x59

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/sunrise/c/f;->a(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;Lcom/sunrise/h/c;)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v10, "write"

    const-string v11, "(Z)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v10, v11}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v7, "write"

    const-string v10, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v10}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_9

    const/16 v5, 0x19

    const-string v6, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;Lcom/sunrise/h/c;)V

    const/16 v5, 0xb8

    const-string v6, "java/lang/Character"

    const-string v10, "toString"

    const-string v11, "(C)Ljava/lang/String;"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v10, v11}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v7, "writeString"

    const-string v10, "(Ljava/lang/String;C)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v10}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_a

    const/16 v5, 0x19

    const-string v6, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;Lcom/sunrise/h/c;)V

    const/16 v5, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v7, "writeString"

    const-string v10, "(Ljava/lang/String;C)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v10}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v5, 0x19

    const-string v6, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x59

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/sunrise/c/f;->a(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;Lcom/sunrise/h/c;)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v10, "writeEnum"

    const-string v11, "(Ljava/lang/Enum;)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v10, v11}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v7, "write"

    const-string v10, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v10}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const-class v6, Ljava/util/List;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v5, v10, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    instance-of v6, v5, Ljava/lang/Class;

    if-eqz v6, :cond_d

    const-class v6, Ljava/lang/Object;

    :goto_3
    const/4 v5, 0x0

    instance-of v11, v6, Ljava/lang/Class;

    if-eqz v11, :cond_c

    move-object v5, v6

    check-cast v5, Ljava/lang/Class;

    const-class v11, Ljava/lang/Object;

    if-ne v5, v11, :cond_c

    const/4 v5, 0x0

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;Lcom/sunrise/h/c;)V

    const/16 v11, 0xc0

    const-string v12, "java/util/List"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v11, 0x3a

    const-string v12, "list"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lcom/sunrise/c/f;->b(II)V

    const-class v11, Ljava/lang/String;

    if-ne v5, v11, :cond_e

    invoke-static/range {p4 .. p4}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v5, 0x19

    const-string v6, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x19

    const-string v6, "list"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v10, "write"

    const-string v11, "(Ljava/util/List;)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v10, v11}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/16 v5, 0x19

    const-string v6, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v7, "write"

    const-string v10, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v10}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v5, v6

    goto/16 :goto_3

    :cond_e
    new-instance v11, Lcom/sunrise/c/e;

    invoke-direct {v11}, Lcom/sunrise/c/e;-><init>()V

    new-instance v12, Lcom/sunrise/c/e;

    invoke-direct {v12}, Lcom/sunrise/c/e;-><init>()V

    const/16 v13, 0x19

    const-string v14, "list"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/sunrise/c/f;->b(II)V

    const/16 v13, 0xc7

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v12}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v13, 0x19

    const-string v14, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/sunrise/c/f;->b(II)V

    const/16 v13, 0xb6

    sget-object v14, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v15, "writeNull"

    const-string v16, "()V"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0xa7

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v11}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v12, 0x19

    const-string v13, "list"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lcom/sunrise/c/f;->b(II)V

    const/16 v12, 0xb9

    const-string v13, "java/util/List"

    const-string v14, "size"

    const-string v15, "()I"

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14, v15}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x36

    const-string v13, "size"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lcom/sunrise/c/f;->b(II)V

    const/16 v12, 0x19

    const-string v13, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lcom/sunrise/c/f;->b(II)V

    const/16 v12, 0x10

    const/16 v13, 0x5b

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lcom/sunrise/c/f;->b(II)V

    const/16 v12, 0xb6

    sget-object v13, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v14, "write"

    const-string v15, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14, v15}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/sunrise/c/e;

    invoke-direct {v12}, Lcom/sunrise/c/e;-><init>()V

    new-instance v13, Lcom/sunrise/c/e;

    invoke-direct {v13}, Lcom/sunrise/c/e;-><init>()V

    new-instance v14, Lcom/sunrise/c/e;

    invoke-direct {v14}, Lcom/sunrise/c/e;-><init>()V

    const/4 v15, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/sunrise/c/f;->a(I)V

    const/16 v15, 0x36

    const-string v16, "i"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/sunrise/c/f;->b(II)V

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v15, 0x15

    const-string v16, "i"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v15, 0x15

    const-string v16, "size"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v15, 0xa2

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v14}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v15, 0x15

    const-string v16, "i"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v15, 0x99

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v13}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v15, 0x19

    const-string v16, "out"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v15, 0x10

    const/16 v16, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v15, 0xb6

    sget-object v16, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v17, "write"

    const-string v18, "(I)V"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-interface {v0, v15, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v13, 0x19

    const-string v15, "list"

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v15}, Lcom/sunrise/c/f;->b(II)V

    const/16 v13, 0x15

    const-string v15, "i"

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v15}, Lcom/sunrise/c/f;->b(II)V

    const/16 v13, 0xb9

    const-string v15, "java/util/List"

    const-string v16, "get"

    const-string v17, "(I)Ljava/lang/Object;"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v13, v15, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0x3a

    const-string v15, "list_item"

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v15}, Lcom/sunrise/c/f;->b(II)V

    new-instance v13, Lcom/sunrise/c/e;

    invoke-direct {v13}, Lcom/sunrise/c/e;-><init>()V

    new-instance v15, Lcom/sunrise/c/e;

    invoke-direct {v15}, Lcom/sunrise/c/e;-><init>()V

    const/16 v16, 0x19

    const-string v17, "list_item"

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v16, 0xc7

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v15}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v16, 0x19

    const-string v17, "out"

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v16, 0xb6

    sget-object v17, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v18, "writeNull"

    const-string v19, "()V"

    move-object/from16 v0, p2

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0xa7

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v13}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    new-instance v15, Lcom/sunrise/c/e;

    invoke-direct {v15}, Lcom/sunrise/c/e;-><init>()V

    new-instance v16, Lcom/sunrise/c/e;

    invoke-direct/range {v16 .. v16}, Lcom/sunrise/c/e;-><init>()V

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v17

    if-eqz v17, :cond_10

    const/16 v17, 0x19

    const-string v18, "list_item"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v17, 0xb6

    const-string v18, "java/lang/Object"

    const-string v19, "getClass"

    const-string v20, "()Ljava/lang/Class;"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v17, 0xa6

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v10, v5}, Lcom/sunrise/f/a;->a(Lcom/sunrise/f/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Ljava/lang/Class;)V

    const/16 v17, 0x3a

    const-string v18, "list_item_desc"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    new-instance v17, Lcom/sunrise/c/e;

    invoke-direct/range {v17 .. v17}, Lcom/sunrise/c/e;-><init>()V

    new-instance v18, Lcom/sunrise/c/e;

    invoke-direct/range {v18 .. v18}, Lcom/sunrise/c/e;-><init>()V

    invoke-static/range {p4 .. p4}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v19

    if-eqz v19, :cond_f

    const/16 v19, 0x19

    const-string v20, "list_item_desc"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v19, 0xc1

    sget-object v20, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v19, 0x99

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v19, 0x19

    const-string v20, "list_item_desc"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v19, 0xc0

    sget-object v20, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v19, 0x19

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v19, 0x19

    const-string v20, "list_item"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    invoke-static/range {p4 .. p4}, Lcom/sunrise/f/b;->c(Lcom/sunrise/f/b;)Z

    move-result v19

    if-eqz v19, :cond_11

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/sunrise/c/f;->a(I)V

    :goto_5
    invoke-static {v5}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    iget v0, v10, Lcom/sunrise/h/c;->h:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v19, 0xb6

    sget-object v20, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    const-string v21, "writeAsArrayNonContext"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "(L"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0xa7

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    :cond_f
    const/16 v17, 0x19

    const-string v19, "list_item_desc"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v17, 0x19

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v17, 0x19

    const-string v19, "list_item"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    invoke-static/range {p4 .. p4}, Lcom/sunrise/f/b;->c(Lcom/sunrise/f/b;)Z

    move-result v17

    if-eqz v17, :cond_12

    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/sunrise/c/f;->a(I)V

    :goto_6
    invoke-static {v5}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    iget v0, v10, Lcom/sunrise/h/c;->h:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v17, 0xb9

    sget-object v19, Lcom/sunrise/f/a;->c:Ljava/lang/String;

    const-string v20, "write"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "(L"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v17, 0xa7

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1, v15}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    :cond_10
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v16, 0x19

    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v16, 0x19

    const-string v17, "list_item"

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    invoke-static/range {p4 .. p4}, Lcom/sunrise/f/b;->c(Lcom/sunrise/f/b;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/16 v16, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/sunrise/c/f;->a(I)V

    :goto_7
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_14

    check-cast v6, Ljava/lang/Class;

    invoke-static {v6}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    iget v5, v10, Lcom/sunrise/h/c;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v10, "writeWithFieldName"

    const-string v16, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v5, v6, v10, v1}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const-string v5, "i"

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->c(II)V

    const/16 v5, 0xa7

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v5, 0x19

    const-string v6, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x10

    const/16 v6, 0x5d

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v10, "write"

    const-string v12, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v10, v12}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    goto/16 :goto_4

    :cond_11
    const/16 v19, 0x15

    const-string v20, "i"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v19, 0xb8

    const-string v20, "java/lang/Integer"

    const-string v21, "valueOf"

    const-string v22, "(I)Ljava/lang/Integer;"

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_12
    const/16 v17, 0x15

    const-string v19, "i"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v17, 0xb8

    const-string v19, "java/lang/Integer"

    const-string v20, "valueOf"

    const-string v21, "(I)Ljava/lang/Integer;"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_13
    const/16 v16, 0x15

    const-string v17, "i"

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v16, 0xb8

    const-string v17, "java/lang/Integer"

    const-string v18, "valueOf"

    const-string v19, "(I)Ljava/lang/Integer;"

    move-object/from16 v0, p2

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_14
    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v10, "writeWithFieldName"

    const-string v16, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v5, v6, v10, v1}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_15
    new-instance v6, Lcom/sunrise/c/e;

    invoke-direct {v6}, Lcom/sunrise/c/e;-><init>()V

    new-instance v11, Lcom/sunrise/c/e;

    invoke-direct {v11}, Lcom/sunrise/c/e;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;Lcom/sunrise/h/c;)V

    const/16 v12, 0x59

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/sunrise/c/f;->a(I)V

    const/16 v12, 0x3a

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "field_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lcom/sunrise/c/f;->b(II)V

    const/16 v12, 0xc7

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v11}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v12, 0x19

    const-string v13, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lcom/sunrise/c/f;->b(II)V

    const/16 v12, 0xb6

    sget-object v13, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v14, "writeNull"

    const-string v15, "()V"

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14, v15}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0xa7

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v6}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    new-instance v11, Lcom/sunrise/c/e;

    invoke-direct {v11}, Lcom/sunrise/c/e;-><init>()V

    new-instance v12, Lcom/sunrise/c/e;

    invoke-direct {v12}, Lcom/sunrise/c/e;-><init>()V

    const/16 v13, 0x19

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "field_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v10, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/sunrise/c/f;->b(II)V

    const/16 v13, 0xb6

    const-string v14, "java/lang/Object"

    const-string v15, "getClass"

    const-string v16, "()Ljava/lang/Class;"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v13, 0xa6

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v12}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v10}, Lcom/sunrise/f/a;->a(Lcom/sunrise/f/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;)V

    const/16 v13, 0x3a

    const-string v14, "fied_ser"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/sunrise/c/f;->b(II)V

    new-instance v13, Lcom/sunrise/c/e;

    invoke-direct {v13}, Lcom/sunrise/c/e;-><init>()V

    new-instance v14, Lcom/sunrise/c/e;

    invoke-direct {v14}, Lcom/sunrise/c/e;-><init>()V

    invoke-static/range {p4 .. p4}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v15

    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v15

    if-eqz v15, :cond_16

    const/16 v15, 0x19

    const-string v16, "fied_ser"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v15, 0xc1

    sget-object v16, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v15, 0x99

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v13}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v15, 0x19

    const-string v16, "fied_ser"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v15, 0xc0

    sget-object v16, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v15, 0x19

    const/16 v16, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v15, 0x19

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "field_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v15, 0x19

    sget v16, Lcom/sunrise/f/b;->a:I

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {v5}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    iget v15, v10, Lcom/sunrise/h/c;->h:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v15, 0xb6

    sget-object v16, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    const-string v17, "writeAsArrayNonContext"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "(L"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-interface {v0, v15, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v15, 0xa7

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v14}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    :cond_16
    const/16 v13, 0x19

    const-string v15, "fied_ser"

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v15}, Lcom/sunrise/c/f;->b(II)V

    const/16 v13, 0x19

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v15}, Lcom/sunrise/c/f;->b(II)V

    const/16 v13, 0x19

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "field_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v10, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v15}, Lcom/sunrise/c/f;->b(II)V

    const/16 v13, 0x19

    sget v15, Lcom/sunrise/f/b;->a:I

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v15}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {v5}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    iget v5, v10, Lcom/sunrise/h/c;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v5, 0xb9

    sget-object v13, Lcom/sunrise/f/a;->c:Ljava/lang/String;

    const-string v15, "write"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "(L"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v5, v13, v15, v1}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v5, 0xa7

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v11}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    invoke-virtual {v10}, Lcom/sunrise/h/c;->e()Ljava/lang/String;

    move-result-object v5

    const/16 v12, 0x19

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lcom/sunrise/c/f;->b(II)V

    const/16 v12, 0x19

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "field_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lcom/sunrise/c/f;->b(II)V

    if-eqz v5, :cond_17

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v5, 0xb6

    sget-object v10, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v12, "writeWithFormat"

    const-string v13, "(Ljava/lang/Object;Ljava/lang/String;)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v10, v12, v13}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v5, 0x19

    const-string v6, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v7, "write"

    const-string v10, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v10}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_17
    const/16 v5, 0x19

    sget v12, Lcom/sunrise/f/b;->a:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12}, Lcom/sunrise/c/f;->b(II)V

    iget-object v5, v10, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    instance-of v5, v5, Ljava/lang/Class;

    if-eqz v5, :cond_18

    iget-object v5, v10, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v5, 0xb6

    sget-object v10, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v12, "writeWithFieldName"

    const-string v13, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v10, v12, v13}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_18
    const/16 v5, 0x19

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb4

    invoke-static/range {p4 .. p4}, Lcom/sunrise/f/b;->d(Lcom/sunrise/f/b;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v10, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_asm_fieldType"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Ljava/lang/reflect/Type;"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12, v13, v14}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v10, Lcom/sunrise/h/c;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v5, 0xb6

    sget-object v10, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v12, "writeWithFieldName"

    const-string v13, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v10, v12, v13}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9
.end method

.method private b(Lcom/sunrise/c/f;Lcom/sunrise/f/b;)V
    .locals 5

    const/16 v1, 0x19

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Lcom/sunrise/c/f;->b(II)V

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/sunrise/c/f;->b(II)V

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x15

    const-string v1, "seperator"

    invoke-virtual {p2, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    const-string v2, "writeAfter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";Ljava/lang/Object;C)C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x36

    const-string v1, "seperator"

    invoke-virtual {p2, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    return-void
.end method

.method private b(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V
    .locals 7

    const/4 v6, 0x2

    const/16 v5, 0x15

    const/16 v4, 0xb8

    const/16 v3, 0x19

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    const-string v1, "hasNameFilters"

    invoke-virtual {p3, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v5, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x99

    invoke-interface {p1, v1, v0}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    iget-object v1, p2, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-interface {p1, v3, v2}, Lcom/sunrise/c/f;->b(II)V

    const/4 v2, 0x1

    invoke-interface {p1, v3, v2}, Lcom/sunrise/c/f;->b(II)V

    invoke-interface {p1, v3, v6}, Lcom/sunrise/c/f;->b(II)V

    sget v2, Lcom/sunrise/f/b;->a:I

    invoke-interface {p1, v3, v2}, Lcom/sunrise/c/f;->b(II)V

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    const-string v1, "byte"

    invoke-virtual {p3, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v5, v1}, Lcom/sunrise/c/f;->b(II)V

    const-string v1, "java/lang/Byte"

    const-string v2, "valueOf"

    const-string v3, "(B)Ljava/lang/Byte;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/16 v1, 0xb6

    sget-object v2, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    const-string v3, "processKey"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3a

    sget v2, Lcom/sunrise/f/b;->a:I

    invoke-interface {p1, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    return-void

    :cond_0
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    const-string v1, "short"

    invoke-virtual {p3, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v5, v1}, Lcom/sunrise/c/f;->b(II)V

    const-string v1, "java/lang/Short"

    const-string v2, "valueOf"

    const-string v3, "(S)Ljava/lang/Short;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_2

    const-string v1, "int"

    invoke-virtual {p3, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v5, v1}, Lcom/sunrise/c/f;->b(II)V

    const-string v1, "java/lang/Integer"

    const-string v2, "valueOf"

    const-string v3, "(I)Ljava/lang/Integer;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_3

    const-string v1, "char"

    invoke-virtual {p3, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v5, v1}, Lcom/sunrise/c/f;->b(II)V

    const-string v1, "java/lang/Character"

    const-string v2, "valueOf"

    const-string v3, "(C)Ljava/lang/Character;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_4

    const/16 v1, 0x16

    const-string v2, "long"

    invoke-virtual {p3, v2, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const-string v1, "java/lang/Long"

    const-string v2, "valueOf"

    const-string v3, "(J)Ljava/lang/Long;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_5

    const/16 v1, 0x17

    const-string v2, "float"

    invoke-virtual {p3, v2}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const-string v1, "java/lang/Float"

    const-string v2, "valueOf"

    const-string v3, "(F)Ljava/lang/Float;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_6

    const/16 v1, 0x18

    const-string v2, "double"

    invoke-virtual {p3, v2, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const-string v1, "java/lang/Double"

    const-string v2, "valueOf"

    const-string v3, "(D)Ljava/lang/Double;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_7

    const-string v1, "boolean"

    invoke-virtual {p3, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v5, v1}, Lcom/sunrise/c/f;->b(II)V

    const-string v1, "java/lang/Boolean"

    const-string v2, "valueOf"

    const-string v3, "(Z)Ljava/lang/Boolean;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-class v2, Ljava/math/BigDecimal;

    if-ne v1, v2, :cond_8

    const-string v1, "decimal"

    invoke-virtual {p3, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0

    :cond_8
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_9

    const-string v1, "string"

    invoke-virtual {p3, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v1, "enum"

    invoke-virtual {p3, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0

    :cond_a
    const-class v2, Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "list"

    invoke-virtual {p3, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "object"

    invoke-virtual {p3, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0
.end method

.method private b(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V
    .locals 6

    const/16 v5, 0xb6

    const/16 v4, 0x19

    invoke-static {p3}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v4, v0}, Lcom/sunrise/c/f;->b(II)V

    const/4 v0, 0x1

    invoke-interface {p1, v4, v0}, Lcom/sunrise/c/f;->b(II)V

    const/4 v0, 0x2

    invoke-interface {p1, v4, v0}, Lcom/sunrise/c/f;->b(II)V

    sget v0, Lcom/sunrise/f/b;->a:I

    invoke-interface {p1, v4, v0}, Lcom/sunrise/c/f;->b(II)V

    sget-object v0, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    const-string v1, "applyName"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";Ljava/lang/Object;Ljava/lang/String;)Z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x99

    invoke-interface {p1, v0, p4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sunrise/f/a;->c(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    :cond_0
    iget-object v0, p2, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    const-string v0, "out"

    invoke-virtual {p3, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/sunrise/c/f;->b(II)V

    sget-object v0, Lcom/sunrise/f/ba;->z:Lcom/sunrise/f/ba;

    iget v0, v0, Lcom/sunrise/f/ba;->C:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    sget-object v0, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v1, "isEnabled"

    const-string v2, "(I)Z"

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9a

    invoke-interface {p1, v0, p4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/Class;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V
    .locals 8

    const/16 v7, 0x15

    const/16 v6, 0xb6

    const/16 v5, 0x19

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    new-instance v1, Lcom/sunrise/c/e;

    invoke-direct {v1}, Lcom/sunrise/c/e;-><init>()V

    new-instance v2, Lcom/sunrise/c/e;

    invoke-direct {v2}, Lcom/sunrise/c/e;-><init>()V

    invoke-direct {p0, p2, p3, p4, v2}, Lcom/sunrise/f/a;->b(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    invoke-direct {p0, p2, p4, p3}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;Lcom/sunrise/h/c;)V

    const/16 v3, 0xc0

    const-string v4, "java/lang/Enum"

    invoke-interface {p2, v3, v4}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v3, 0x3a

    const-string v4, "enum"

    invoke-virtual {p4, v4}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    invoke-direct {p0, p2, p3, p4, v2}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    const-string v3, "enum"

    invoke-virtual {p4, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xc7

    invoke-interface {p2, v3, v0}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/sunrise/f/a;->c(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V

    const/16 v3, 0xa7

    invoke-interface {p2, v3, v1}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    invoke-static {p4}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "out"

    invoke-virtual {p4, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/sunrise/c/f;->b(II)V

    const-string v0, "seperator"

    invoke-virtual {p4, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v7, v0}, Lcom/sunrise/c/f;->b(II)V

    sget v0, Lcom/sunrise/f/b;->a:I

    invoke-interface {p2, v5, v0}, Lcom/sunrise/c/f;->b(II)V

    const-string v0, "enum"

    invoke-virtual {p4, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/sunrise/c/f;->b(II)V

    const-string v0, "java/lang/Enum"

    const-string v3, "name"

    const-string v4, "()Ljava/lang/String;"

    invoke-interface {p2, v6, v0, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v3, "writeFieldValueStringWithDoubleQuote"

    const-string v4, "(CLjava/lang/String;Ljava/lang/String;)V"

    invoke-interface {p2, v6, v0, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p2, p4}, Lcom/sunrise/f/a;->d(Lcom/sunrise/c/f;Lcom/sunrise/f/b;)V

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    invoke-interface {p2, v2}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    return-void

    :cond_0
    const-string v0, "out"

    invoke-virtual {p4, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/sunrise/c/f;->b(II)V

    const-string v0, "seperator"

    invoke-virtual {p4, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v7, v0}, Lcom/sunrise/c/f;->b(II)V

    sget-object v0, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v3, "write"

    const-string v4, "(I)V"

    invoke-interface {p2, v6, v0, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-virtual {p4, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/sunrise/c/f;->b(II)V

    sget v0, Lcom/sunrise/f/b;->a:I

    invoke-interface {p2, v5, v0}, Lcom/sunrise/c/f;->b(II)V

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(I)V

    sget-object v0, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v3, "writeFieldName"

    const-string v4, "(Ljava/lang/String;Z)V"

    invoke-interface {p2, v6, v0, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p2, v5, v0}, Lcom/sunrise/c/f;->b(II)V

    const-string v0, "enum"

    invoke-virtual {p4, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/sunrise/c/f;->b(II)V

    sget v0, Lcom/sunrise/f/b;->a:I

    invoke-interface {p2, v5, v0}, Lcom/sunrise/c/f;->b(II)V

    iget-object v0, p3, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-static {v0}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    iget v0, p3, Lcom/sunrise/h/c;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    sget-object v0, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v3, "writeWithFieldName"

    const-string v4, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-interface {p2, v6, v0, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/Class;Lcom/sunrise/c/f;[Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v8, Lcom/sunrise/c/e;

    invoke-direct {v8}, Lcom/sunrise/c/e;-><init>()V

    array-length v9, p3

    invoke-static {p4}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v2, Lcom/sunrise/c/e;

    invoke-direct {v2}, Lcom/sunrise/c/e;-><init>()V

    new-instance v3, Lcom/sunrise/c/e;

    invoke-direct {v3}, Lcom/sunrise/c/e;-><init>()V

    const/16 v0, 0x19

    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    sget-object v0, Lcom/sunrise/f/ba;->n:Lcom/sunrise/f/ba;

    iget v0, v0, Lcom/sunrise/f/ba;->C:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v4, "isEnabled"

    const-string v5, "(I)Z"

    invoke-interface {p2, v0, v1, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9a

    invoke-interface {p2, v0, v3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/4 v1, 0x0

    array-length v4, p3

    const/4 v0, 0x0

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, p3, v1

    iget-object v5, v5, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_8

    const/16 v0, 0x19

    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    sget-object v0, Lcom/sunrise/f/ba;->B:Lcom/sunrise/f/ba;

    iget v0, v0, Lcom/sunrise/f/ba;->C:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v4, "isEnabled"

    const-string v5, "(I)Z"

    invoke-interface {p2, v0, v1, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x99

    invoke-interface {p2, v0, v2}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    :goto_1
    invoke-interface {p2, v3}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x19

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x19

    const/4 v1, 0x2

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x19

    const/4 v1, 0x3

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x19

    const/4 v1, 0x4

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x15

    const/4 v1, 0x5

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0xb7

    sget-object v1, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    const-string v3, "write"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v0, v1, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb1

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(I)V

    invoke-interface {p2, v2}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    :cond_2
    invoke-static {p4}, Lcom/sunrise/f/b;->c(Lcom/sunrise/f/b;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x19

    const/4 v2, 0x2

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x15

    const/4 v2, 0x5

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xb6

    sget-object v2, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    const-string v3, "writeReference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";Ljava/lang/Object;I)Z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x99

    invoke-interface {p2, v1, v0}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v1, 0xb1

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(I)V

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    :cond_3
    invoke-static {p4}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p4}, Lcom/sunrise/f/b;->c(Lcom/sunrise/f/b;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "writeAsArrayNonContext"

    :goto_2
    invoke-static {p4}, Lcom/sunrise/f/b;->e(Lcom/sunrise/f/b;)Lcom/sunrise/f/av;

    move-result-object v1

    iget v1, v1, Lcom/sunrise/f/av;->f:I

    sget-object v2, Lcom/sunrise/f/ba;->v:Lcom/sunrise/f/ba;

    iget v2, v2, Lcom/sunrise/f/ba;->C:I

    and-int/2addr v1, v2

    if-nez v1, :cond_b

    new-instance v1, Lcom/sunrise/c/e;

    invoke-direct {v1}, Lcom/sunrise/c/e;-><init>()V

    const/16 v2, 0x19

    const-string v3, "out"

    invoke-virtual {p4, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    sget-object v2, Lcom/sunrise/f/ba;->v:Lcom/sunrise/f/ba;

    iget v2, v2, Lcom/sunrise/f/ba;->C:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v2, 0xb6

    sget-object v3, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v4, "isEnabled"

    const-string v5, "(I)Z"

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x99

    invoke-interface {p2, v2, v1}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0x19

    const/4 v3, 0x2

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0x19

    const/4 v3, 0x3

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0x19

    const/4 v3, 0x4

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0x15

    const/4 v3, 0x5

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0xb6

    invoke-static {p4}, Lcom/sunrise/f/b;->d(Lcom/sunrise/f/b;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2, v3, v0, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb1

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(I)V

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    :goto_3
    invoke-static {p4}, Lcom/sunrise/f/b;->c(Lcom/sunrise/f/b;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x19

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v2, "getContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sunrise/f/a;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3a

    const-string v1, "parent"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x19

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x19

    const-string v1, "parent"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x19

    const/4 v1, 0x2

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x19

    const/4 v1, 0x3

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {p4}, Lcom/sunrise/f/b;->e(Lcom/sunrise/f/b;)Lcom/sunrise/f/av;

    move-result-object v0

    iget v0, v0, Lcom/sunrise/f/av;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v2, "setContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sunrise/f/a;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Ljava/lang/Object;Ljava/lang/Object;I)V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {p4}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    new-instance v1, Lcom/sunrise/c/e;

    invoke-direct {v1}, Lcom/sunrise/c/e;-><init>()V

    new-instance v2, Lcom/sunrise/c/e;

    invoke-direct {v2}, Lcom/sunrise/c/e;-><init>()V

    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-interface {p2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v4, 0x4

    invoke-interface {p2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v4, 0x2

    invoke-interface {p2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v5, "isWriteClassName"

    const-string v6, "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z"

    invoke-interface {p2, v3, v4, v5, v6}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x99

    invoke-interface {p2, v3, v1}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v3, 0x19

    const/4 v4, 0x4

    invoke-interface {p2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v4, 0x2

    invoke-interface {p2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    const-string v4, "java/lang/Object"

    const-string v5, "getClass"

    const-string v6, "()Ljava/lang/Class;"

    invoke-interface {p2, v3, v4, v5, v6}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa5

    invoke-interface {p2, v3, v1}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p2, v2}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v2, 0x19

    const-string v3, "out"

    invoke-virtual {p4, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0x10

    const/16 v3, 0x7b

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0xb6

    sget-object v3, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v4, "write"

    const-string v5, "(I)V"

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0x19

    const/4 v3, 0x2

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0xb6

    sget-object v3, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    const-string v4, "writeClassName"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(L"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";Ljava/lang/Object;)V"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x10

    const/16 v3, 0x2c

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0xa7

    invoke-interface {p2, v2, v0}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v1, 0x10

    const/16 v2, 0x7b

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    :goto_4
    const/16 v0, 0x36

    const-string v1, "seperator"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {p4}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p2, p4}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;)V

    :cond_5
    invoke-static {p4}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x19

    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v2, "isNotWriteDefaultValue"

    const-string v3, "()Z"

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x36

    const-string v1, "notWriteDefaultValue"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x19

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v2, "checkValue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sunrise/f/a;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x36

    const-string v1, "checkValue"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x19

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v2, "hasNameFilters"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sunrise/f/a;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x36

    const-string v1, "hasNameFilters"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    :cond_6
    const/4 v0, 0x0

    move v7, v0

    :goto_5
    if-ge v7, v9, :cond_17

    aget-object v3, p3, v7

    iget-object v0, v3, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    iget-object v1, v3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v1, 0x3a

    sget v2, Lcom/sunrise/f/b;->a:I

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_7

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_7

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_d

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x49

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sunrise/f/a;->a(Ljava/lang/Class;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;IC)V

    :goto_6
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_5

    :cond_8
    const/16 v0, 0xa7

    invoke-interface {p2, v0, v2}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    goto/16 :goto_1

    :cond_9
    const-string v0, "writeAsArray"

    goto/16 :goto_2

    :cond_a
    const-string v0, "writeAsArrayNormal"

    goto/16 :goto_2

    :cond_b
    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x19

    const/4 v2, 0x2

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x19

    const/4 v2, 0x3

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x19

    const/4 v2, 0x4

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x15

    const/4 v2, 0x5

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xb6

    invoke-static {p4}, Lcom/sunrise/f/b;->d(Lcom/sunrise/f/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v2, v0, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb1

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(I)V

    goto/16 :goto_3

    :cond_c
    const/16 v0, 0x10

    const/16 v1, 0x7b

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_4

    :cond_d
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_e

    invoke-direct {p0, p1, p2, v3, p4}, Lcom/sunrise/f/a;->c(Ljava/lang/Class;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V

    goto :goto_6

    :cond_e
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_f

    invoke-direct {p0, p1, p2, v3, p4}, Lcom/sunrise/f/a;->d(Ljava/lang/Class;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V

    goto :goto_6

    :cond_f
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_10

    invoke-direct {p0, p1, p2, v3, p4}, Lcom/sunrise/f/a;->e(Ljava/lang/Class;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V

    goto/16 :goto_6

    :cond_10
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_11

    const-string v0, "boolean"

    invoke-virtual {p4, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x5a

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sunrise/f/a;->a(Ljava/lang/Class;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;IC)V

    goto/16 :goto_6

    :cond_11
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_12

    const-string v0, "char"

    invoke-virtual {p4, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x43

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sunrise/f/a;->a(Ljava/lang/Class;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;IC)V

    goto/16 :goto_6

    :cond_12
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_13

    invoke-direct {p0, p1, p2, v3, p4}, Lcom/sunrise/f/a;->g(Ljava/lang/Class;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V

    goto/16 :goto_6

    :cond_13
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_14

    invoke-direct {p0, p1, p2, v3, p4}, Lcom/sunrise/f/a;->f(Ljava/lang/Class;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V

    goto/16 :goto_6

    :cond_14
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-direct {p0, p1, p2, v3, p4}, Lcom/sunrise/f/a;->h(Ljava/lang/Class;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V

    goto/16 :goto_6

    :cond_15
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, p1, p2, v3, p4}, Lcom/sunrise/f/a;->b(Ljava/lang/Class;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V

    goto/16 :goto_6

    :cond_16
    invoke-direct {p0, p1, p2, v3, p4}, Lcom/sunrise/f/a;->a(Ljava/lang/Class;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V

    goto/16 :goto_6

    :cond_17
    invoke-static {p4}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0, p2, p4}, Lcom/sunrise/f/a;->b(Lcom/sunrise/c/f;Lcom/sunrise/f/b;)V

    :cond_18
    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    new-instance v1, Lcom/sunrise/c/e;

    invoke-direct {v1}, Lcom/sunrise/c/e;-><init>()V

    const/16 v2, 0x15

    const-string v3, "seperator"

    invoke-virtual {p4, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0x10

    const/16 v3, 0x7b

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->a(II)V

    const/16 v2, 0xa0

    invoke-interface {p2, v2, v0}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v2, 0x19

    const-string v3, "out"

    invoke-virtual {p4, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0x10

    const/16 v3, 0x7b

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0xb6

    sget-object v3, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v4, "write"

    const-string v5, "(I)V"

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v0, 0x19

    const-string v2, "out"

    invoke-virtual {p4, v2}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v0, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x10

    const/16 v2, 0x7d

    invoke-interface {p2, v0, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0xb6

    sget-object v2, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v3, "write"

    const-string v4, "(I)V"

    invoke-interface {p2, v0, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    invoke-interface {p2, v8}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    invoke-static {p4}, Lcom/sunrise/f/b;->c(Lcom/sunrise/f/b;)Z

    move-result v0

    if-nez v0, :cond_19

    const/16 v0, 0x19

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x19

    const-string v1, "parent"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v2, "setContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sunrise/f/a;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method private c(Lcom/sunrise/c/f;Lcom/sunrise/f/b;)V
    .locals 4

    const/16 v3, 0xb6

    const/16 v1, 0x19

    invoke-static {p2}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "out"

    invoke-virtual {p2, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/sunrise/c/f;->b(II)V

    sget v0, Lcom/sunrise/f/b;->a:I

    invoke-interface {p1, v1, v0}, Lcom/sunrise/c/f;->b(II)V

    sget-object v0, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v1, "writeFieldNameDirect"

    const-string v2, "(Ljava/lang/String;)V"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "out"

    invoke-virtual {p2, v0}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/sunrise/c/f;->b(II)V

    sget v0, Lcom/sunrise/f/b;->a:I

    invoke-interface {p1, v1, v0}, Lcom/sunrise/c/f;->b(II)V

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(I)V

    sget-object v0, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v1, "writeFieldName"

    const-string v2, "(Ljava/lang/String;Z)V"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V
    .locals 11

    const/4 v1, 0x0

    const/16 v10, 0xb6

    const/16 v9, 0x19

    iget-object v2, p2, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    new-instance v3, Lcom/sunrise/c/e;

    invoke-direct {v3}, Lcom/sunrise/c/e;-><init>()V

    new-instance v4, Lcom/sunrise/c/e;

    invoke-direct {v4}, Lcom/sunrise/c/e;-><init>()V

    new-instance v5, Lcom/sunrise/c/e;

    invoke-direct {v5}, Lcom/sunrise/c/e;-><init>()V

    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    invoke-virtual {p2}, Lcom/sunrise/h/c;->d()Lcom/sunrise/b/b;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/sunrise/b/b;->f()[Lcom/sunrise/f/ba;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/f/ba;->a([Lcom/sunrise/f/ba;)I

    move-result v0

    :goto_0
    sget-object v6, Lcom/sunrise/f/ba;->c:Lcom/sunrise/f/ba;

    iget v6, v6, Lcom/sunrise/f/ba;->C:I

    and-int/2addr v6, v0

    if-nez v6, :cond_0

    const-string v6, "out"

    invoke-virtual {p3, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v9, v6}, Lcom/sunrise/c/f;->b(II)V

    sget-object v6, Lcom/sunrise/f/ba;->c:Lcom/sunrise/f/ba;

    iget v6, v6, Lcom/sunrise/f/ba;->C:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v7, "isEnabled"

    const-string v8, "(I)Z"

    invoke-interface {p1, v10, v6, v7, v8}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x99

    invoke-interface {p1, v6, v3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    :cond_0
    invoke-interface {p1, v4}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const-string v4, "out"

    invoke-virtual {p3, v4}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v9, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x15

    const-string v6, "seperator"

    invoke-virtual {p3, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v4, v6}, Lcom/sunrise/c/f;->b(II)V

    sget-object v4, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v6, "write"

    const-string v7, "(I)V"

    invoke-interface {p1, v10, v4, v6, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/sunrise/f/a;->c(Lcom/sunrise/c/f;Lcom/sunrise/f/b;)V

    const-string v4, "out"

    invoke-virtual {p3, v4}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v9, v4}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const-class v0, Ljava/lang/String;

    if-eq v2, v0, :cond_1

    const-class v0, Ljava/lang/Character;

    if-ne v2, v0, :cond_2

    :cond_1
    sget-object v0, Lcom/sunrise/f/ba;->h:Lcom/sunrise/f/ba;

    iget v0, v0, Lcom/sunrise/f/ba;->C:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    :goto_1
    sget-object v0, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v1, "writeNull"

    const-string v2, "(II)V"

    invoke-interface {p1, v10, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/sunrise/f/a;->d(Lcom/sunrise/c/f;Lcom/sunrise/f/b;)V

    const/16 v0, 0xa7

    invoke-interface {p1, v0, v5}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p1, v3}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    invoke-interface {p1, v5}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    return-void

    :cond_2
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sunrise/f/ba;->i:Lcom/sunrise/f/ba;

    iget v0, v0, Lcom/sunrise/f/ba;->C:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-class v0, Ljava/lang/Boolean;

    if-ne v2, v0, :cond_4

    sget-object v0, Lcom/sunrise/f/ba;->j:Lcom/sunrise/f/ba;

    iget v0, v0, Lcom/sunrise/f/ba;->C:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-object v0, Lcom/sunrise/f/ba;->g:Lcom/sunrise/f/ba;

    iget v0, v0, Lcom/sunrise/f/ba;->C:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method private c(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V
    .locals 5

    const/16 v1, 0x19

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Lcom/sunrise/c/f;->b(II)V

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/sunrise/c/f;->b(II)V

    iget-object v0, p2, Lcom/sunrise/h/c;->j:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    const-string v2, "applyLabel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";Ljava/lang/String;)Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x99

    invoke-interface {p1, v0, p4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    return-void
.end method

.method private c(Ljava/lang/Class;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V
    .locals 5

    const/16 v4, 0x19

    const/4 v3, 0x2

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/sunrise/f/a;->b(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    invoke-direct {p0, p2, p4, p3}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;Lcom/sunrise/h/c;)V

    const/16 v1, 0x37

    const-string v2, "long"

    invoke-virtual {p4, v2, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x15

    const-string v2, "seperator"

    invoke-virtual {p4, v2}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    sget v1, Lcom/sunrise/f/b;->a:I

    invoke-interface {p2, v4, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x16

    const-string v2, "long"

    invoke-virtual {p4, v2, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xb6

    sget-object v2, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v3, "writeFieldValue"

    const-string v4, "(CLjava/lang/String;J)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lcom/sunrise/f/a;->d(Lcom/sunrise/c/f;Lcom/sunrise/f/b;)V

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    return-void
.end method

.method private d(Lcom/sunrise/c/f;Lcom/sunrise/f/b;)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x2c

    invoke-interface {p1, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x36

    const-string v1, "seperator"

    invoke-virtual {p2, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    return-void
.end method

.method private d(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V
    .locals 10

    invoke-virtual {p2}, Lcom/sunrise/h/c;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p2, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    new-instance v2, Lcom/sunrise/c/e;

    invoke-direct {v2}, Lcom/sunrise/c/e;-><init>()V

    invoke-static {p3}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x19

    const-string v4, "object"

    invoke-virtual {p3, v4}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    :goto_0
    const/16 v3, 0x59

    invoke-interface {p1, v3}, Lcom/sunrise/c/f;->a(I)V

    const/16 v3, 0x3a

    const-string v4, "object"

    invoke-virtual {p3, v4}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xc7

    invoke-interface {p1, v3, v2}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sunrise/f/a;->c(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V

    const/16 v3, 0xa7

    invoke-interface {p1, v3, p4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p1, v2}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v2, 0x19

    const-string v3, "out"

    invoke-virtual {p3, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0x15

    const-string v3, "seperator"

    invoke-virtual {p3, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0xb6

    sget-object v3, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v4, "write"

    const-string v5, "(I)V"

    invoke-interface {p1, v2, v3, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/sunrise/f/a;->c(Lcom/sunrise/c/f;Lcom/sunrise/f/b;)V

    new-instance v2, Lcom/sunrise/c/e;

    invoke-direct {v2}, Lcom/sunrise/c/e;-><init>()V

    new-instance v3, Lcom/sunrise/c/e;

    invoke-direct {v3}, Lcom/sunrise/c/e;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/sunrise/d/j;->a(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x19

    const-string v5, "object"

    invoke-virtual {p3, v5}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0xb6

    const-string v5, "java/lang/Object"

    const-string v6, "getClass"

    const-string v7, "()Ljava/lang/Class;"

    invoke-interface {p1, v4, v5, v6, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v0, 0xa6

    invoke-interface {p1, v0, v3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-direct {p0, p3, p1, p2}, Lcom/sunrise/f/a;->a(Lcom/sunrise/f/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;)V

    const/16 v0, 0x3a

    const-string v4, "fied_ser"

    invoke-virtual {p3, v4}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v0, v4}, Lcom/sunrise/c/f;->b(II)V

    new-instance v4, Lcom/sunrise/c/e;

    invoke-direct {v4}, Lcom/sunrise/c/e;-><init>()V

    new-instance v5, Lcom/sunrise/c/e;

    invoke-direct {v5}, Lcom/sunrise/c/e;-><init>()V

    const/16 v0, 0x19

    const-string v6, "fied_ser"

    invoke-virtual {p3, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v0, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0xc1

    sget-object v6, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    invoke-interface {p1, v0, v6}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v0, 0x99

    invoke-interface {p1, v0, v4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    iget v0, p2, Lcom/sunrise/h/c;->h:I

    sget-object v6, Lcom/sunrise/f/ba;->v:Lcom/sunrise/f/ba;

    iget v6, v6, Lcom/sunrise/f/ba;->C:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {p3}, Lcom/sunrise/f/b;->c(Lcom/sunrise/f/b;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p3}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v0, :cond_3

    const-string v0, "writeAsArrayNonContext"

    :goto_2
    const/16 v6, 0x19

    const-string v7, "fied_ser"

    invoke-virtual {p3, v7}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v6, v7}, Lcom/sunrise/c/f;->b(II)V

    const/16 v6, 0xc0

    sget-object v7, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    invoke-interface {p1, v6, v7}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v6, 0x19

    const/4 v7, 0x1

    invoke-interface {p1, v6, v7}, Lcom/sunrise/c/f;->b(II)V

    const/16 v6, 0x19

    const-string v7, "object"

    invoke-virtual {p3, v7}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v6, v7}, Lcom/sunrise/c/f;->b(II)V

    const/16 v6, 0x19

    sget v7, Lcom/sunrise/f/b;->a:I

    invoke-interface {p1, v6, v7}, Lcom/sunrise/c/f;->b(II)V

    const/16 v6, 0x19

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Lcom/sunrise/c/f;->b(II)V

    const/16 v6, 0xb4

    invoke-static {p3}, Lcom/sunrise/f/b;->d(Lcom/sunrise/f/b;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p2, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_asm_fieldType"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Ljava/lang/reflect/Type;"

    invoke-interface {p1, v6, v7, v8, v9}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v6, p2, Lcom/sunrise/h/c;->h:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v6, 0xb6

    sget-object v7, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(L"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v6, v7, v0, v8}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa7

    invoke-interface {p1, v0, v5}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p1, v4}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v0, 0x19

    const-string v4, "fied_ser"

    invoke-virtual {p3, v4}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v0, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x19

    const/4 v4, 0x1

    invoke-interface {p1, v0, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x19

    const-string v4, "object"

    invoke-virtual {p3, v4}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v0, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x19

    sget v4, Lcom/sunrise/f/b;->a:I

    invoke-interface {p1, v0, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x19

    const/4 v4, 0x0

    invoke-interface {p1, v0, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0xb4

    invoke-static {p3}, Lcom/sunrise/f/b;->d(Lcom/sunrise/f/b;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_asm_fieldType"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Ljava/lang/reflect/Type;"

    invoke-interface {p1, v0, v4, v6, v7}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p2, Lcom/sunrise/h/c;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v0, 0xb9

    sget-object v4, Lcom/sunrise/f/a;->c:Ljava/lang/String;

    const-string v6, "write"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(L"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v0, v4, v6, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v5}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v0, 0xa7

    invoke-interface {p1, v0, v2}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    :cond_0
    invoke-interface {p1, v3}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v0, 0x19

    const/4 v3, 0x1

    invoke-interface {p1, v0, v3}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {p3}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x19

    const-string v3, "object"

    invoke-virtual {p3, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v0, v3}, Lcom/sunrise/c/f;->b(II)V

    :goto_3
    if-eqz v1, :cond_7

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v3, "writeWithFormat"

    const-string v4, "(Ljava/lang/Object;Ljava/lang/String;)V"

    invoke-interface {p1, v0, v1, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-interface {p1, v2}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    invoke-direct {p0, p1, p3}, Lcom/sunrise/f/a;->d(Lcom/sunrise/c/f;Lcom/sunrise/f/b;)V

    return-void

    :cond_1
    const/16 v3, 0x19

    sget v4, Lcom/sunrise/f/b;->c:I

    invoke-interface {p1, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_3
    const-string v0, "writeDirectNonContext"

    goto/16 :goto_2

    :cond_4
    if-eqz v0, :cond_5

    const-string v0, "writeAsArray"

    goto/16 :goto_2

    :cond_5
    const-string v0, "write"

    goto/16 :goto_2

    :cond_6
    const/16 v0, 0x19

    sget v3, Lcom/sunrise/f/b;->c:I

    invoke-interface {p1, v0, v3}, Lcom/sunrise/c/f;->b(II)V

    goto :goto_3

    :cond_7
    const/16 v0, 0x19

    sget v1, Lcom/sunrise/f/b;->a:I

    invoke-interface {p1, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    iget-object v0, p2, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v3, "writeWithFieldName"

    const-string v4, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    invoke-interface {p1, v0, v1, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-object v0, p2, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_9

    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    :goto_5
    iget v0, p2, Lcom/sunrise/h/c;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v3, "writeWithFieldName"

    const-string v4, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-interface {p1, v0, v1, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0xb4

    invoke-static {p3}, Lcom/sunrise/f/b;->d(Lcom/sunrise/f/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm_fieldType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Ljava/lang/reflect/Type;"

    invoke-interface {p1, v0, v1, v3, v4}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private d(Ljava/lang/Class;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V
    .locals 5

    const/16 v3, 0x19

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/sunrise/f/a;->b(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    invoke-direct {p0, p2, p4, p3}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;Lcom/sunrise/h/c;)V

    const/16 v1, 0x38

    const-string v2, "float"

    invoke-virtual {p4, v2}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x15

    const-string v2, "seperator"

    invoke-virtual {p4, v2}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    sget v1, Lcom/sunrise/f/b;->a:I

    invoke-interface {p2, v3, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x17

    const-string v2, "float"

    invoke-virtual {p4, v2}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xb6

    sget-object v2, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v3, "writeFieldValue"

    const-string v4, "(CLjava/lang/String;F)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lcom/sunrise/f/a;->d(Lcom/sunrise/c/f;Lcom/sunrise/f/b;)V

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    return-void
.end method

.method private e(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V
    .locals 5

    const/16 v4, 0x15

    const/16 v3, 0x99

    invoke-static {p3}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    const-string v1, "notWriteDefaultValue"

    invoke-virtual {p3, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/sunrise/c/f;->b(II)V

    invoke-interface {p1, v3, v0}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    iget-object v1, p2, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_2

    const-string v1, "boolean"

    invoke-virtual {p3, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/sunrise/c/f;->b(II)V

    invoke-interface {p1, v3, p4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    :cond_1
    :goto_1
    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    goto :goto_0

    :cond_2
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_3

    const-string v1, "byte"

    invoke-virtual {p3, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/sunrise/c/f;->b(II)V

    invoke-interface {p1, v3, p4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    goto :goto_1

    :cond_3
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_4

    const-string v1, "short"

    invoke-virtual {p3, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/sunrise/c/f;->b(II)V

    invoke-interface {p1, v3, p4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    goto :goto_1

    :cond_4
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_5

    const-string v1, "int"

    invoke-virtual {p3, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/sunrise/c/f;->b(II)V

    invoke-interface {p1, v3, p4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    goto :goto_1

    :cond_5
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_6

    const/16 v1, 0x16

    const-string v2, "long"

    invoke-virtual {p3, v2}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x9

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    const/16 v1, 0x94

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    invoke-interface {p1, v3, p4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    goto :goto_1

    :cond_6
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_7

    const/16 v1, 0x17

    const-string v2, "float"

    invoke-virtual {p3, v2}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    const/16 v1, 0x95

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    invoke-interface {p1, v3, p4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    goto :goto_1

    :cond_7
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    const/16 v1, 0x18

    const-string v2, "double"

    invoke-virtual {p3, v2}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xe

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    const/16 v1, 0x97

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    invoke-interface {p1, v3, p4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    goto/16 :goto_1
.end method

.method private e(Ljava/lang/Class;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V
    .locals 5

    const/16 v4, 0x19

    const/4 v3, 0x2

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/sunrise/f/a;->b(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    invoke-direct {p0, p2, p4, p3}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;Lcom/sunrise/h/c;)V

    const/16 v1, 0x39

    const-string v2, "double"

    invoke-virtual {p4, v2, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x15

    const-string v2, "seperator"

    invoke-virtual {p4, v2}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    sget v1, Lcom/sunrise/f/b;->a:I

    invoke-interface {p2, v4, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x18

    const-string v2, "double"

    invoke-virtual {p4, v2, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xb6

    sget-object v2, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v3, "writeFieldValue"

    const-string v4, "(CLjava/lang/String;D)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lcom/sunrise/f/a;->d(Lcom/sunrise/c/f;Lcom/sunrise/f/b;)V

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    return-void
.end method

.method private f(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V
    .locals 7

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    iget-object v1, p2, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/sunrise/c/e;

    invoke-direct {v2}, Lcom/sunrise/c/e;-><init>()V

    const/16 v3, 0x15

    const-string v4, "checkValue"

    invoke-virtual {p3, v4}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x9a

    invoke-interface {p1, v3, v2}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Lcom/sunrise/c/f;->a(I)V

    const/16 v3, 0x59

    invoke-interface {p1, v3}, Lcom/sunrise/c/f;->a(I)V

    const/16 v3, 0x3a

    sget v4, Lcom/sunrise/f/b;->b:I

    invoke-interface {p1, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x3a

    sget v4, Lcom/sunrise/f/b;->c:I

    invoke-interface {p1, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xa7

    invoke-interface {p1, v3, v0}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p1, v2}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    :cond_0
    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    iget-object v2, p2, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/sunrise/f/b;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v2, 0xb6

    sget-object v3, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    const-string v4, "getBeanContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(I)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/sunrise/f/i;

    invoke-static {v6}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2, v3, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x19

    const/4 v3, 0x2

    invoke-interface {p1, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0x19

    sget v3, Lcom/sunrise/f/b;->a:I

    invoke-interface {p1, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const-string v2, "Ljava/lang/Object;"

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_1

    const/16 v1, 0x15

    const-string v3, "byte"

    invoke-virtual {p3, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xb8

    const-string v3, "java/lang/Byte"

    const-string v4, "valueOf"

    const-string v5, "(B)Ljava/lang/Byte;"

    invoke-interface {p1, v1, v3, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x59

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    const/16 v1, 0x3a

    sget v3, Lcom/sunrise/f/b;->b:I

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    :goto_0
    const/16 v1, 0xb6

    sget-object v3, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    const-string v4, "processValue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(L"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/sunrise/f/i;

    invoke-static {v6}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Ljava/lang/Object;Ljava/lang/String;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")Ljava/lang/Object;"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v3, v4, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3a

    sget v2, Lcom/sunrise/f/b;->c:I

    invoke-interface {p1, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x19

    sget v2, Lcom/sunrise/f/b;->b:I

    invoke-interface {p1, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x19

    sget v2, Lcom/sunrise/f/b;->c:I

    invoke-interface {p1, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xa5

    invoke-interface {p1, v1, v0}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sunrise/f/a;->d(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    const/16 v1, 0xa7

    invoke-interface {p1, v1, p4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    return-void

    :cond_1
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_2

    const/16 v1, 0x15

    const-string v3, "short"

    invoke-virtual {p3, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xb8

    const-string v3, "java/lang/Short"

    const-string v4, "valueOf"

    const-string v5, "(S)Ljava/lang/Short;"

    invoke-interface {p1, v1, v3, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x59

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    const/16 v1, 0x3a

    sget v3, Lcom/sunrise/f/b;->b:I

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0

    :cond_2
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_3

    const/16 v1, 0x15

    const-string v3, "int"

    invoke-virtual {p3, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xb8

    const-string v3, "java/lang/Integer"

    const-string v4, "valueOf"

    const-string v5, "(I)Ljava/lang/Integer;"

    invoke-interface {p1, v1, v3, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x59

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    const/16 v1, 0x3a

    sget v3, Lcom/sunrise/f/b;->b:I

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0

    :cond_3
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_4

    const/16 v1, 0x15

    const-string v3, "char"

    invoke-virtual {p3, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xb8

    const-string v3, "java/lang/Character"

    const-string v4, "valueOf"

    const-string v5, "(C)Ljava/lang/Character;"

    invoke-interface {p1, v1, v3, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x59

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    const/16 v1, 0x3a

    sget v3, Lcom/sunrise/f/b;->b:I

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0

    :cond_4
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_5

    const/16 v1, 0x16

    const-string v3, "long"

    const/4 v4, 0x2

    invoke-virtual {p3, v3, v4}, Lcom/sunrise/f/b;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xb8

    const-string v3, "java/lang/Long"

    const-string v4, "valueOf"

    const-string v5, "(J)Ljava/lang/Long;"

    invoke-interface {p1, v1, v3, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x59

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    const/16 v1, 0x3a

    sget v3, Lcom/sunrise/f/b;->b:I

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0

    :cond_5
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_6

    const/16 v1, 0x17

    const-string v3, "float"

    invoke-virtual {p3, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xb8

    const-string v3, "java/lang/Float"

    const-string v4, "valueOf"

    const-string v5, "(F)Ljava/lang/Float;"

    invoke-interface {p1, v1, v3, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x59

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    const/16 v1, 0x3a

    sget v3, Lcom/sunrise/f/b;->b:I

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0

    :cond_6
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_7

    const/16 v1, 0x18

    const-string v3, "double"

    const/4 v4, 0x2

    invoke-virtual {p3, v3, v4}, Lcom/sunrise/f/b;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xb8

    const-string v3, "java/lang/Double"

    const-string v4, "valueOf"

    const-string v5, "(D)Ljava/lang/Double;"

    invoke-interface {p1, v1, v3, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x59

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    const/16 v1, 0x3a

    sget v3, Lcom/sunrise/f/b;->b:I

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0

    :cond_7
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_8

    const/16 v1, 0x15

    const-string v3, "boolean"

    invoke-virtual {p3, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xb8

    const-string v3, "java/lang/Boolean"

    const-string v4, "valueOf"

    const-string v5, "(Z)Ljava/lang/Boolean;"

    invoke-interface {p1, v1, v3, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x59

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    const/16 v1, 0x3a

    sget v3, Lcom/sunrise/f/b;->b:I

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0

    :cond_8
    const-class v3, Ljava/math/BigDecimal;

    if-ne v1, v3, :cond_9

    const/16 v1, 0x19

    const-string v3, "decimal"

    invoke-virtual {p3, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x3a

    sget v3, Lcom/sunrise/f/b;->b:I

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x19

    sget v3, Lcom/sunrise/f/b;->b:I

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0

    :cond_9
    const-class v3, Ljava/lang/String;

    if-ne v1, v3, :cond_a

    const/16 v1, 0x19

    const-string v3, "string"

    invoke-virtual {p3, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x3a

    sget v3, Lcom/sunrise/f/b;->b:I

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x19

    sget v3, Lcom/sunrise/f/b;->b:I

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v1, 0x19

    const-string v3, "enum"

    invoke-virtual {p3, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x3a

    sget v3, Lcom/sunrise/f/b;->b:I

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x19

    sget v3, Lcom/sunrise/f/b;->b:I

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0

    :cond_b
    const-class v3, Ljava/util/List;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x19

    const-string v3, "list"

    invoke-virtual {p3, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x3a

    sget v3, Lcom/sunrise/f/b;->b:I

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x19

    sget v3, Lcom/sunrise/f/b;->b:I

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x19

    const-string v3, "object"

    invoke-virtual {p3, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x3a

    sget v3, Lcom/sunrise/f/b;->b:I

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x19

    sget v3, Lcom/sunrise/f/b;->b:I

    invoke-interface {p1, v1, v3}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_0
.end method

.method private f(Ljava/lang/Class;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V
    .locals 7

    const/16 v6, 0xa7

    const/16 v4, 0x19

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/sunrise/f/a;->b(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    invoke-direct {p0, p2, p4, p3}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;Lcom/sunrise/h/c;)V

    const/16 v1, 0x3a

    const-string v2, "decimal"

    invoke-virtual {p4, v2}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    new-instance v1, Lcom/sunrise/c/e;

    invoke-direct {v1}, Lcom/sunrise/c/e;-><init>()V

    new-instance v2, Lcom/sunrise/c/e;

    invoke-direct {v2}, Lcom/sunrise/c/e;-><init>()V

    new-instance v3, Lcom/sunrise/c/e;

    invoke-direct {v3}, Lcom/sunrise/c/e;-><init>()V

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const-string v1, "decimal"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xc7

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/sunrise/f/a;->c(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V

    invoke-interface {p2, v6, v3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p2, v2}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x15

    const-string v2, "seperator"

    invoke-virtual {p4, v2}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    sget v1, Lcom/sunrise/f/b;->a:I

    invoke-interface {p2, v4, v1}, Lcom/sunrise/c/f;->b(II)V

    const-string v1, "decimal"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xb6

    sget-object v2, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v4, "writeFieldValue"

    const-string v5, "(CLjava/lang/String;Ljava/math/BigDecimal;)V"

    invoke-interface {p2, v1, v2, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lcom/sunrise/f/a;->d(Lcom/sunrise/c/f;Lcom/sunrise/f/b;)V

    invoke-interface {p2, v6, v3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p2, v3}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    return-void
.end method

.method private g(Ljava/lang/Class;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V
    .locals 7

    const/16 v6, 0xb6

    const/16 v5, 0x15

    const/16 v4, 0x19

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/sunrise/f/a;->b(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    invoke-direct {p0, p2, p4, p3}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;Lcom/sunrise/h/c;)V

    const/16 v1, 0x3a

    const-string v2, "string"

    invoke-virtual {p4, v2}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    new-instance v1, Lcom/sunrise/c/e;

    invoke-direct {v1}, Lcom/sunrise/c/e;-><init>()V

    new-instance v2, Lcom/sunrise/c/e;

    invoke-direct {v2}, Lcom/sunrise/c/e;-><init>()V

    const-string v3, "string"

    invoke-virtual {p4, v3}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v4, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xc7

    invoke-interface {p2, v3, v1}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/sunrise/f/a;->c(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V

    const/16 v3, 0xa7

    invoke-interface {p2, v3, v2}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    invoke-static {p4}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/sunrise/c/f;->b(II)V

    const-string v1, "seperator"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v5, v1}, Lcom/sunrise/c/f;->b(II)V

    sget v1, Lcom/sunrise/f/b;->a:I

    invoke-interface {p2, v4, v1}, Lcom/sunrise/c/f;->b(II)V

    const-string v1, "string"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/sunrise/c/f;->b(II)V

    sget-object v1, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v3, "writeFieldValueStringWithDoubleQuoteCheck"

    const-string v4, "(CLjava/lang/String;Ljava/lang/String;)V"

    invoke-interface {p2, v6, v1, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p2, p4}, Lcom/sunrise/f/a;->d(Lcom/sunrise/c/f;Lcom/sunrise/f/b;)V

    invoke-interface {p2, v2}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    return-void

    :cond_0
    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/sunrise/c/f;->b(II)V

    const-string v1, "seperator"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v5, v1}, Lcom/sunrise/c/f;->b(II)V

    sget v1, Lcom/sunrise/f/b;->a:I

    invoke-interface {p2, v4, v1}, Lcom/sunrise/c/f;->b(II)V

    const-string v1, "string"

    invoke-virtual {p4, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/sunrise/c/f;->b(II)V

    sget-object v1, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v3, "writeFieldValue"

    const-string v4, "(CLjava/lang/String;Ljava/lang/String;)V"

    invoke-interface {p2, v6, v1, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private h(Ljava/lang/Class;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V
    .locals 22

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    instance-of v6, v5, Ljava/lang/Class;

    if-eqz v6, :cond_4

    const-class v6, Ljava/lang/Object;

    :goto_0
    const/4 v5, 0x0

    instance-of v7, v6, Ljava/lang/Class;

    if-eqz v7, :cond_0

    move-object v5, v6

    check-cast v5, Ljava/lang/Class;

    :cond_0
    const-class v7, Ljava/lang/Object;

    if-eq v5, v7, :cond_1

    const-class v7, Ljava/io/Serializable;

    if-ne v5, v7, :cond_2

    :cond_1
    const/4 v5, 0x0

    :cond_2
    new-instance v8, Lcom/sunrise/c/e;

    invoke-direct {v8}, Lcom/sunrise/c/e;-><init>()V

    new-instance v7, Lcom/sunrise/c/e;

    invoke-direct {v7}, Lcom/sunrise/c/e;-><init>()V

    new-instance v9, Lcom/sunrise/c/e;

    invoke-direct {v9}, Lcom/sunrise/c/e;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/sunrise/f/a;->b(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/f/b;Lcom/sunrise/h/c;)V

    const/16 v10, 0xc0

    const-string v11, "java/util/List"

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v10, 0x3a

    const-string v11, "list"

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11}, Lcom/sunrise/c/f;->b(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/sunrise/f/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;Lcom/sunrise/c/e;)V

    const/16 v10, 0x19

    const-string v11, "list"

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11}, Lcom/sunrise/c/f;->b(II)V

    const/16 v10, 0xc7

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v7}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/sunrise/f/a;->c(Lcom/sunrise/c/f;Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V

    const/16 v10, 0xa7

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v9}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v7, 0x19

    const-string v10, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v10}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0x15

    const-string v10, "seperator"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v10}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0xb6

    sget-object v10, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v11, "write"

    const-string v12, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v10, v11, v12}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/sunrise/f/a;->c(Lcom/sunrise/c/f;Lcom/sunrise/f/b;)V

    const/16 v7, 0x19

    const-string v10, "list"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v10}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0xb9

    const-string v10, "java/util/List"

    const-string v11, "size"

    const-string v12, "()I"

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v10, v11, v12}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x36

    const-string v10, "size"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v10}, Lcom/sunrise/c/f;->b(II)V

    new-instance v7, Lcom/sunrise/c/e;

    invoke-direct {v7}, Lcom/sunrise/c/e;-><init>()V

    new-instance v10, Lcom/sunrise/c/e;

    invoke-direct {v10}, Lcom/sunrise/c/e;-><init>()V

    const/16 v11, 0x15

    const-string v12, "size"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lcom/sunrise/c/f;->b(II)V

    const/4 v11, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/sunrise/c/f;->a(I)V

    const/16 v11, 0xa0

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v7}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v11, 0x19

    const-string v12, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lcom/sunrise/c/f;->b(II)V

    const-string v11, "[]"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v11, 0xb6

    sget-object v12, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v13, "write"

    const-string v14, "(Ljava/lang/String;)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12, v13, v14}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0xa7

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v10}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    invoke-static/range {p4 .. p4}, Lcom/sunrise/f/b;->c(Lcom/sunrise/f/b;)Z

    move-result v7

    if-nez v7, :cond_3

    const/16 v7, 0x19

    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v11}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0x19

    const-string v11, "list"

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v11}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0x19

    sget v11, Lcom/sunrise/f/b;->a:I

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v11}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0xb6

    sget-object v11, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v12, "setContext"

    const-string v13, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v11, v12, v13}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_5

    invoke-static/range {p4 .. p4}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v5, 0x19

    const-string v6, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x19

    const-string v6, "list"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v7, "write"

    const-string v11, "(Ljava/util/List;)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v11}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/16 v5, 0x19

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v7, "popContext"

    const-string v11, "()V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v11}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/sunrise/f/a;->d(Lcom/sunrise/c/f;Lcom/sunrise/f/b;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    return-void

    :cond_4
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v5, v6

    goto/16 :goto_0

    :cond_5
    const/16 v7, 0x19

    const-string v11, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v11}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0x10

    const/16 v11, 0x5b

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v11}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0xb6

    sget-object v11, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v12, "write"

    const-string v13, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v11, v12, v13}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/sunrise/c/e;

    invoke-direct {v11}, Lcom/sunrise/c/e;-><init>()V

    new-instance v7, Lcom/sunrise/c/e;

    invoke-direct {v7}, Lcom/sunrise/c/e;-><init>()V

    new-instance v12, Lcom/sunrise/c/e;

    invoke-direct {v12}, Lcom/sunrise/c/e;-><init>()V

    const/4 v13, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/sunrise/c/f;->a(I)V

    const/16 v13, 0x36

    const-string v14, "i"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/sunrise/c/f;->b(II)V

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v13, 0x15

    const-string v14, "i"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/sunrise/c/f;->b(II)V

    const/16 v13, 0x15

    const-string v14, "size"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/sunrise/c/f;->b(II)V

    const/16 v13, 0xa2

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v12}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v13, 0x15

    const-string v14, "i"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/sunrise/c/f;->b(II)V

    const/16 v13, 0x99

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v7}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v13, 0x19

    const-string v14, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/sunrise/c/f;->b(II)V

    const/16 v13, 0x10

    const/16 v14, 0x2c

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/sunrise/c/f;->b(II)V

    const/16 v13, 0xb6

    sget-object v14, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v15, "write"

    const-string v16, "(I)V"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v7, 0x19

    const-string v13, "list"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v13}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0x15

    const-string v13, "i"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v13}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0xb9

    const-string v13, "java/util/List"

    const-string v14, "get"

    const-string v15, "(I)Ljava/lang/Object;"

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v13, v14, v15}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x3a

    const-string v13, "list_item"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v13}, Lcom/sunrise/c/f;->b(II)V

    new-instance v13, Lcom/sunrise/c/e;

    invoke-direct {v13}, Lcom/sunrise/c/e;-><init>()V

    new-instance v7, Lcom/sunrise/c/e;

    invoke-direct {v7}, Lcom/sunrise/c/e;-><init>()V

    const/16 v14, 0x19

    const-string v15, "list_item"

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Lcom/sunrise/c/f;->b(II)V

    const/16 v14, 0xc7

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v7}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v14, 0x19

    const-string v15, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Lcom/sunrise/c/f;->b(II)V

    const/16 v14, 0xb6

    sget-object v15, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v16, "writeNull"

    const-string v17, "()V"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0xa7

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v13}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    new-instance v14, Lcom/sunrise/c/e;

    invoke-direct {v14}, Lcom/sunrise/c/e;-><init>()V

    new-instance v15, Lcom/sunrise/c/e;

    invoke-direct {v15}, Lcom/sunrise/c/e;-><init>()V

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x19

    const-string v16, "list_item"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v7, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0xb6

    const-string v16, "java/lang/Object"

    const-string v17, "getClass"

    const-string v18, "()Ljava/lang/Class;"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-interface {v0, v7, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v7, 0xa6

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v15}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sunrise/f/a;->a(Lcom/sunrise/f/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Ljava/lang/Class;)V

    const/16 v7, 0x3a

    const-string v16, "list_item_desc"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v7, v1}, Lcom/sunrise/c/f;->b(II)V

    new-instance v16, Lcom/sunrise/c/e;

    invoke-direct/range {v16 .. v16}, Lcom/sunrise/c/e;-><init>()V

    new-instance v17, Lcom/sunrise/c/e;

    invoke-direct/range {v17 .. v17}, Lcom/sunrise/c/e;-><init>()V

    invoke-static/range {p4 .. p4}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static/range {p4 .. p4}, Lcom/sunrise/f/b;->c(Lcom/sunrise/f/b;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static/range {p4 .. p4}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "writeDirectNonContext"

    :goto_2
    const/16 v18, 0x19

    const-string v19, "list_item_desc"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v18, 0xc1

    sget-object v19, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v18, 0x99

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v18, 0x19

    const-string v19, "list_item_desc"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v18, 0xc0

    sget-object v19, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v18, 0x19

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v18, 0x19

    const-string v19, "list_item"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    invoke-static/range {p4 .. p4}, Lcom/sunrise/f/b;->c(Lcom/sunrise/f/b;)Z

    move-result v18

    if-eqz v18, :cond_9

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/sunrise/c/f;->a(I)V

    :goto_3
    invoke-static {v5}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sunrise/h/c;->h:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v18, 0xb6

    sget-object v19, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "(L"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v7, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xa7

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v7, v1}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    :cond_6
    const/16 v7, 0x19

    const-string v16, "list_item_desc"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v7, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0x19

    const/16 v16, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v7, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0x19

    const-string v16, "list_item"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v7, v1}, Lcom/sunrise/c/f;->b(II)V

    invoke-static/range {p4 .. p4}, Lcom/sunrise/f/b;->c(Lcom/sunrise/f/b;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/sunrise/c/f;->a(I)V

    :goto_4
    invoke-static {v5}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    move-object/from16 v0, p3

    iget v7, v0, Lcom/sunrise/h/c;->h:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v7, 0xb9

    sget-object v16, Lcom/sunrise/f/a;->c:Ljava/lang/String;

    const-string v18, "write"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "(L"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v7, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v7, 0xa7

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v14}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    :cond_7
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v7, 0x19

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v15}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0x19

    const-string v15, "list_item"

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v15}, Lcom/sunrise/c/f;->b(II)V

    invoke-static/range {p4 .. p4}, Lcom/sunrise/f/b;->c(Lcom/sunrise/f/b;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/sunrise/c/f;->a(I)V

    :goto_5
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_c

    check-cast v6, Ljava/lang/Class;

    invoke-static {v6}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    move-object/from16 v0, p3

    iget v5, v0, Lcom/sunrise/h/c;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v7, "writeWithFieldName"

    const-string v15, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v15}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const-string v5, "i"

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->c(II)V

    const/16 v5, 0xa7

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v11}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v5, 0x19

    const-string v6, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x10

    const/16 v6, 0x5d

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v7, "write"

    const-string v11, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v11}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v7, "write"

    goto/16 :goto_2

    :cond_9
    const/16 v18, 0x15

    const-string v19, "i"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v18, 0xb8

    const-string v19, "java/lang/Integer"

    const-string v20, "valueOf"

    const-string v21, "(I)Ljava/lang/Integer;"

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    const/16 v7, 0x15

    const-string v16, "i"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v7, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0xb8

    const-string v16, "java/lang/Integer"

    const-string v18, "valueOf"

    const-string v19, "(I)Ljava/lang/Integer;"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v7, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    const/16 v7, 0x15

    const-string v15, "i"

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v15}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0xb8

    const-string v15, "java/lang/Integer"

    const-string v16, "valueOf"

    const-string v17, "(I)Ljava/lang/Integer;"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v7, v15, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_c
    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v7, "writeWithFieldName"

    const-string v15, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v15}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method


# virtual methods
.method public a(Lcom/sunrise/f/av;)Lcom/sunrise/f/ag;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sunrise/f/av;->a:Ljava/lang/Class;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/sunrise/a/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupportd class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const-class v4, Lcom/sunrise/b/d;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    move-object/from16 v21, v4

    check-cast v21, Lcom/sunrise/b/d;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sunrise/f/av;->d:[Lcom/sunrise/h/c;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, v24, v4

    iget-object v7, v6, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    if-nez v7, :cond_1

    iget-object v7, v6, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_1

    iget-object v6, v6, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v4, Lcom/sunrise/f/ag;

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Lcom/sunrise/f/ag;-><init>(Ljava/lang/Class;)V

    :goto_1
    return-object v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sunrise/f/av;->e:[Lcom/sunrise/h/c;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sunrise/f/av;->e:[Lcom/sunrise/h/c;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sunrise/f/av;->d:[Lcom/sunrise/h/c;

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    move/from16 v22, v4

    :goto_2
    move-object/from16 v0, v25

    array-length v4, v0

    const/16 v5, 0x100

    if-le v4, v5, :cond_4

    new-instance v4, Lcom/sunrise/f/ag;

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Lcom/sunrise/f/ag;-><init>(Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    move/from16 v22, v4

    goto :goto_2

    :cond_4
    move-object/from16 v0, v25

    array-length v5, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_6

    aget-object v6, v25, v4

    invoke-virtual {v6}, Lcom/sunrise/h/c;->b()Ljava/lang/reflect/Member;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sunrise/h/b;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    new-instance v4, Lcom/sunrise/f/ag;

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Lcom/sunrise/f/ag;-><init>(Ljava/lang/Class;)V

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ASMSerializer_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sunrise/f/a;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sunrise/f/a;

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x2e

    const/16 v8, 0x2f

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    new-instance v4, Lcom/sunrise/c/b;

    invoke-direct {v4}, Lcom/sunrise/c/b;-><init>()V

    const/16 v5, 0x31

    const/16 v6, 0x21

    sget-object v8, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    sget-object v11, Lcom/sunrise/f/a;->c:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual/range {v4 .. v9}, Lcom/sunrise/c/b;->a(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, v25

    array-length v6, v0

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v6, :cond_a

    aget-object v8, v25, v5

    iget-object v9, v8, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, v8, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->isEnum()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, v8, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    if-ne v9, v10, :cond_8

    :cond_7
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    new-instance v9, Lcom/sunrise/c/c;

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_asm_fieldType"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Ljava/lang/reflect/Type;"

    invoke-direct {v9, v4, v10, v11, v12}, Lcom/sunrise/c/c;-><init>(Lcom/sunrise/c/b;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/sunrise/c/c;->a()V

    const-class v9, Ljava/util/List;

    iget-object v10, v8, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_9

    new-instance v9, Lcom/sunrise/c/c;

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_asm_list_item_ser_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/sunrise/f/a;->d:Ljava/lang/String;

    invoke-direct {v9, v4, v10, v11, v12}, Lcom/sunrise/c/c;-><init>(Lcom/sunrise/c/b;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/sunrise/c/c;->a()V

    :cond_9
    new-instance v9, Lcom/sunrise/c/c;

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v8, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "_asm_ser_"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lcom/sunrise/f/a;->d:Ljava/lang/String;

    invoke-direct {v9, v4, v10, v8, v11}, Lcom/sunrise/c/c;-><init>(Lcom/sunrise/c/b;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/sunrise/c/c;->a()V

    goto :goto_5

    :cond_a
    new-instance v8, Lcom/sunrise/c/g;

    const/4 v10, 0x1

    const-string v11, "<init>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/sunrise/f/av;

    invoke-static {v6}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")V"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v4

    invoke-direct/range {v8 .. v14}, Lcom/sunrise/c/g;-><init>(Lcom/sunrise/c/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v5, 0x19

    const/4 v6, 0x0

    invoke-interface {v8, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x19

    const/4 v6, 0x1

    invoke-interface {v8, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb7

    sget-object v6, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    const-string v9, "<init>"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Lcom/sunrise/f/av;

    invoke-static {v11}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")V"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v5, v6, v9, v10}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_6
    move-object/from16 v0, v25

    array-length v6, v0

    if-ge v5, v6, :cond_e

    aget-object v6, v25, v5

    iget-object v9, v6, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, v6, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->isEnum()Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, v6, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    if-ne v9, v10, :cond_c

    :cond_b
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_c
    const/16 v9, 0x19

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/sunrise/c/f;->b(II)V

    iget-object v9, v6, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_d

    iget-object v9, v6, Lcom/sunrise/h/c;->f:Ljava/lang/Class;

    invoke-static {v9}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    iget-object v9, v6, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v9, 0xb8

    const-class v10, Lcom/sunrise/h/b;

    invoke-static {v10}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "getMethodType"

    const-string v12, "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;"

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    const/16 v9, 0xb5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v6, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "_asm_fieldType"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "Ljava/lang/reflect/Type;"

    invoke-interface {v8, v9, v7, v6, v10}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    const/16 v9, 0x19

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v9, 0xb7

    sget-object v10, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    const-string v11, "getFieldType"

    const-string v12, "(I)Ljava/lang/reflect/Type;"

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    const/16 v5, 0xb1

    invoke-interface {v8, v5}, Lcom/sunrise/c/f;->a(I)V

    const/4 v5, 0x4

    const/4 v6, 0x4

    invoke-interface {v8, v5, v6}, Lcom/sunrise/c/f;->d(II)V

    invoke-interface {v8}, Lcom/sunrise/c/f;->a()V

    const/4 v5, 0x0

    if-eqz v21, :cond_f

    invoke-interface/range {v21 .. v21}, Lcom/sunrise/b/d;->e()[Lcom/sunrise/f/ba;

    move-result-object v8

    array-length v9, v8

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v9, :cond_f

    aget-object v10, v8, v6

    sget-object v11, Lcom/sunrise/f/ba;->p:Lcom/sunrise/f/ba;

    if-ne v10, v11, :cond_13

    const/4 v5, 0x1

    :cond_f
    const/4 v6, 0x0

    :goto_a
    const/4 v8, 0x3

    if-ge v6, v8, :cond_16

    const/4 v12, 0x0

    if-nez v6, :cond_14

    const-string v17, "write"

    const/4 v12, 0x1

    move v13, v5

    :goto_b
    new-instance v8, Lcom/sunrise/f/b;

    move-object/from16 v9, v25

    move-object/from16 v10, p1

    move-object v11, v7

    invoke-direct/range {v8 .. v13}, Lcom/sunrise/f/b;-><init>([Lcom/sunrise/h/c;Lcom/sunrise/f/av;Ljava/lang/String;ZZ)V

    new-instance v14, Lcom/sunrise/c/g;

    const/16 v16, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(L"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v9, 0x0

    const-string v10, "java/io/IOException"

    aput-object v10, v20, v9

    move-object v15, v4

    invoke-direct/range {v14 .. v20}, Lcom/sunrise/c/g;-><init>(Lcom/sunrise/c/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v9, 0x19

    const/4 v10, 0x1

    invoke-interface {v14, v9, v10}, Lcom/sunrise/c/f;->b(II)V

    const/16 v9, 0xb4

    sget-object v10, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v11, "out"

    sget-object v12, Lcom/sunrise/f/a;->f:Ljava/lang/String;

    invoke-interface {v14, v9, v10, v11, v12}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x3a

    const-string v10, "out"

    invoke-virtual {v8, v10}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v14, v9, v10}, Lcom/sunrise/c/f;->b(II)V

    if-nez v22, :cond_11

    invoke-static {v8}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v9

    if-nez v9, :cond_11

    if-eqz v21, :cond_10

    invoke-interface/range {v21 .. v21}, Lcom/sunrise/b/d;->g()Z

    move-result v9

    if-eqz v9, :cond_11

    :cond_10
    new-instance v9, Lcom/sunrise/c/e;

    invoke-direct {v9}, Lcom/sunrise/c/e;-><init>()V

    const/16 v10, 0x19

    const-string v11, "out"

    invoke-virtual {v8, v11}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v14, v10, v11}, Lcom/sunrise/c/f;->b(II)V

    const/16 v10, 0xb6

    sget-object v11, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v12, "isSortField"

    const-string v15, "()Z"

    invoke-interface {v14, v10, v11, v12, v15}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x9a

    invoke-interface {v14, v10, v9}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v10, 0x19

    const/4 v11, 0x0

    invoke-interface {v14, v10, v11}, Lcom/sunrise/c/f;->b(II)V

    const/16 v10, 0x19

    const/4 v11, 0x1

    invoke-interface {v14, v10, v11}, Lcom/sunrise/c/f;->b(II)V

    const/16 v10, 0x19

    const/4 v11, 0x2

    invoke-interface {v14, v10, v11}, Lcom/sunrise/c/f;->b(II)V

    const/16 v10, 0x19

    const/4 v11, 0x3

    invoke-interface {v14, v10, v11}, Lcom/sunrise/c/f;->b(II)V

    const/16 v10, 0x19

    const/4 v11, 0x4

    invoke-interface {v14, v10, v11}, Lcom/sunrise/c/f;->b(II)V

    const/16 v10, 0x15

    const/4 v11, 0x5

    invoke-interface {v14, v10, v11}, Lcom/sunrise/c/f;->b(II)V

    const/16 v10, 0xb6

    const-string v11, "writeUnsorted"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(L"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v15, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v14, v10, v7, v11, v12}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xb1

    invoke-interface {v14, v10}, Lcom/sunrise/c/f;->a(I)V

    invoke-interface {v14, v9}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    :cond_11
    invoke-static {v8}, Lcom/sunrise/f/b;->a(Lcom/sunrise/f/b;)Z

    move-result v9

    if-eqz v9, :cond_12

    if-nez v13, :cond_12

    new-instance v9, Lcom/sunrise/c/e;

    invoke-direct {v9}, Lcom/sunrise/c/e;-><init>()V

    new-instance v10, Lcom/sunrise/c/e;

    invoke-direct {v10}, Lcom/sunrise/c/e;-><init>()V

    const/16 v11, 0x19

    const/4 v12, 0x0

    invoke-interface {v14, v11, v12}, Lcom/sunrise/c/f;->b(II)V

    const/16 v11, 0x19

    const/4 v12, 0x1

    invoke-interface {v14, v11, v12}, Lcom/sunrise/c/f;->b(II)V

    const/16 v11, 0xb6

    sget-object v12, Lcom/sunrise/f/a;->g:Ljava/lang/String;

    const-string v13, "writeDirect"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "(L"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";)Z"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v11, v12, v13, v15}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x9a

    invoke-interface {v14, v11, v10}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v11, 0x19

    const/4 v12, 0x0

    invoke-interface {v14, v11, v12}, Lcom/sunrise/c/f;->b(II)V

    const/16 v11, 0x19

    const/4 v12, 0x1

    invoke-interface {v14, v11, v12}, Lcom/sunrise/c/f;->b(II)V

    const/16 v11, 0x19

    const/4 v12, 0x2

    invoke-interface {v14, v11, v12}, Lcom/sunrise/c/f;->b(II)V

    const/16 v11, 0x19

    const/4 v12, 0x3

    invoke-interface {v14, v11, v12}, Lcom/sunrise/c/f;->b(II)V

    const/16 v11, 0x19

    const/4 v12, 0x4

    invoke-interface {v14, v11, v12}, Lcom/sunrise/c/f;->b(II)V

    const/16 v11, 0x15

    const/4 v12, 0x5

    invoke-interface {v14, v11, v12}, Lcom/sunrise/c/f;->b(II)V

    const/16 v11, 0xb6

    const-string v12, "writeNormal"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(L"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v15, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v11, v7, v12, v13}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0xb1

    invoke-interface {v14, v11}, Lcom/sunrise/c/f;->a(I)V

    invoke-interface {v14, v10}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v10, 0x19

    const-string v11, "out"

    invoke-virtual {v8, v11}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v14, v10, v11}, Lcom/sunrise/c/f;->b(II)V

    sget-object v10, Lcom/sunrise/f/ba;->p:Lcom/sunrise/f/ba;

    iget v10, v10, Lcom/sunrise/f/ba;->C:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v14, v10}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v10, 0xb6

    sget-object v11, Lcom/sunrise/f/a;->e:Ljava/lang/String;

    const-string v12, "isEnabled"

    const-string v13, "(I)Z"

    invoke-interface {v14, v10, v11, v12, v13}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x99

    invoke-interface {v14, v10, v9}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v10, 0x19

    const/4 v11, 0x0

    invoke-interface {v14, v10, v11}, Lcom/sunrise/c/f;->b(II)V

    const/16 v10, 0x19

    const/4 v11, 0x1

    invoke-interface {v14, v10, v11}, Lcom/sunrise/c/f;->b(II)V

    const/16 v10, 0x19

    const/4 v11, 0x2

    invoke-interface {v14, v10, v11}, Lcom/sunrise/c/f;->b(II)V

    const/16 v10, 0x19

    const/4 v11, 0x3

    invoke-interface {v14, v10, v11}, Lcom/sunrise/c/f;->b(II)V

    const/16 v10, 0x19

    const/4 v11, 0x4

    invoke-interface {v14, v10, v11}, Lcom/sunrise/c/f;->b(II)V

    const/16 v10, 0x15

    const/4 v11, 0x5

    invoke-interface {v14, v10, v11}, Lcom/sunrise/c/f;->b(II)V

    const/16 v10, 0xb6

    const-string v11, "writeDirectNonContext"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "(L"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v14, v10, v7, v11, v12}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xb1

    invoke-interface {v14, v10}, Lcom/sunrise/c/f;->a(I)V

    invoke-interface {v14, v9}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    :cond_12
    const/16 v9, 0x19

    const/4 v10, 0x2

    invoke-interface {v14, v9, v10}, Lcom/sunrise/c/f;->b(II)V

    const/16 v9, 0xc0

    invoke-static/range {v23 .. v23}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v14, v9, v10}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v9, 0x3a

    const-string v10, "entity"

    invoke-virtual {v8, v10}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v14, v9, v10}, Lcom/sunrise/c/f;->b(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v14, v2, v8}, Lcom/sunrise/f/a;->b(Ljava/lang/Class;Lcom/sunrise/c/f;[Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V

    const/16 v9, 0xb1

    invoke-interface {v14, v9}, Lcom/sunrise/c/f;->a(I)V

    const/4 v9, 0x7

    invoke-static {v8}, Lcom/sunrise/f/b;->b(Lcom/sunrise/f/b;)I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    invoke-interface {v14, v9, v8}, Lcom/sunrise/c/f;->d(II)V

    invoke-interface {v14}, Lcom/sunrise/c/f;->a()V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_a

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_9

    :cond_14
    const/4 v8, 0x1

    if-ne v6, v8, :cond_15

    const-string v17, "writeNormal"

    move v13, v5

    goto/16 :goto_b

    :cond_15
    const/4 v12, 0x1

    const/4 v13, 0x1

    const-string v17, "writeDirectNonContext"

    goto/16 :goto_b

    :cond_16
    if-nez v22, :cond_17

    new-instance v8, Lcom/sunrise/f/b;

    const/4 v12, 0x0

    move-object/from16 v9, v25

    move-object/from16 v10, p1

    move-object v11, v7

    move v13, v5

    invoke-direct/range {v8 .. v13}, Lcom/sunrise/f/b;-><init>([Lcom/sunrise/h/c;Lcom/sunrise/f/av;Ljava/lang/String;ZZ)V

    new-instance v9, Lcom/sunrise/c/g;

    const/4 v11, 0x1

    const-string v12, "writeUnsorted"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(L"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v10, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v6, 0x1

    new-array v15, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v10, "java/io/IOException"

    aput-object v10, v15, v6

    move-object v10, v4

    invoke-direct/range {v9 .. v15}, Lcom/sunrise/c/g;-><init>(Lcom/sunrise/c/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v6, 0x19

    const/4 v10, 0x1

    invoke-interface {v9, v6, v10}, Lcom/sunrise/c/f;->b(II)V

    const/16 v6, 0xb4

    sget-object v10, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v11, "out"

    sget-object v12, Lcom/sunrise/f/a;->f:Ljava/lang/String;

    invoke-interface {v9, v6, v10, v11, v12}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x3a

    const-string v10, "out"

    invoke-virtual {v8, v10}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v6, v10}, Lcom/sunrise/c/f;->b(II)V

    const/16 v6, 0x19

    const/4 v10, 0x2

    invoke-interface {v9, v6, v10}, Lcom/sunrise/c/f;->b(II)V

    const/16 v6, 0xc0

    invoke-static/range {v23 .. v23}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v6, v10}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v6, 0x3a

    const-string v10, "entity"

    invoke-virtual {v8, v10}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v6, v10}, Lcom/sunrise/c/f;->b(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v9, v2, v8}, Lcom/sunrise/f/a;->b(Ljava/lang/Class;Lcom/sunrise/c/f;[Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V

    const/16 v6, 0xb1

    invoke-interface {v9, v6}, Lcom/sunrise/c/f;->a(I)V

    const/4 v6, 0x7

    invoke-static {v8}, Lcom/sunrise/f/b;->b(Lcom/sunrise/f/b;)I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    invoke-interface {v9, v6, v8}, Lcom/sunrise/c/f;->d(II)V

    invoke-interface {v9}, Lcom/sunrise/c/f;->a()V

    :cond_17
    const/4 v6, 0x0

    move/from16 v16, v6

    :goto_c
    const/4 v6, 0x3

    move/from16 v0, v16

    if-ge v0, v6, :cond_1a

    const/4 v12, 0x0

    if-nez v16, :cond_18

    const-string v6, "writeAsArray"

    const/4 v12, 0x1

    move v13, v5

    :goto_d
    new-instance v8, Lcom/sunrise/f/b;

    move-object/from16 v9, v25

    move-object/from16 v10, p1

    move-object v11, v7

    invoke-direct/range {v8 .. v13}, Lcom/sunrise/f/b;-><init>([Lcom/sunrise/h/c;Lcom/sunrise/f/av;Ljava/lang/String;ZZ)V

    new-instance v9, Lcom/sunrise/c/g;

    const/4 v11, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "(L"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v10, 0x1

    new-array v15, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v12, "java/io/IOException"

    aput-object v12, v15, v10

    move-object v10, v4

    move-object v12, v6

    invoke-direct/range {v9 .. v15}, Lcom/sunrise/c/g;-><init>(Lcom/sunrise/c/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v6, 0x19

    const/4 v10, 0x1

    invoke-interface {v9, v6, v10}, Lcom/sunrise/c/f;->b(II)V

    const/16 v6, 0xb4

    sget-object v10, Lcom/sunrise/f/a;->b:Ljava/lang/String;

    const-string v11, "out"

    sget-object v12, Lcom/sunrise/f/a;->f:Ljava/lang/String;

    invoke-interface {v9, v6, v10, v11, v12}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x3a

    const-string v10, "out"

    invoke-virtual {v8, v10}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v6, v10}, Lcom/sunrise/c/f;->b(II)V

    const/16 v6, 0x19

    const/4 v10, 0x2

    invoke-interface {v9, v6, v10}, Lcom/sunrise/c/f;->b(II)V

    const/16 v6, 0xc0

    invoke-static/range {v23 .. v23}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v6, v10}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v6, 0x3a

    const-string v10, "entity"

    invoke-virtual {v8, v10}, Lcom/sunrise/f/b;->a(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v6, v10}, Lcom/sunrise/c/f;->b(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v9, v2, v8}, Lcom/sunrise/f/a;->a(Ljava/lang/Class;Lcom/sunrise/c/f;[Lcom/sunrise/h/c;Lcom/sunrise/f/b;)V

    const/16 v6, 0xb1

    invoke-interface {v9, v6}, Lcom/sunrise/c/f;->a(I)V

    const/4 v6, 0x7

    invoke-static {v8}, Lcom/sunrise/f/b;->b(Lcom/sunrise/f/b;)I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    invoke-interface {v9, v6, v8}, Lcom/sunrise/c/f;->d(II)V

    invoke-interface {v9}, Lcom/sunrise/c/f;->a()V

    add-int/lit8 v6, v16, 0x1

    move/from16 v16, v6

    goto/16 :goto_c

    :cond_18
    const/4 v6, 0x1

    move/from16 v0, v16

    if-ne v0, v6, :cond_19

    const-string v6, "writeAsArrayNormal"

    move v13, v5

    goto/16 :goto_d

    :cond_19
    const/4 v12, 0x1

    const/4 v13, 0x1

    const-string v6, "writeAsArrayNonContext"

    goto/16 :goto_d

    :cond_1a
    invoke-virtual {v4}, Lcom/sunrise/c/b;->a()[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sunrise/f/a;->a:Lcom/sunrise/h/a;

    const/4 v6, 0x0

    array-length v7, v4

    move-object/from16 v0, v26

    invoke-virtual {v5, v0, v4, v6, v7}, Lcom/sunrise/h/a;->a(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lcom/sunrise/f/av;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunrise/f/ag;

    goto/16 :goto_1
.end method
