.class public Lcom/sunrise/f/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Lcom/sunrise/h/c;

.field protected final b:Z

.field protected c:I

.field protected d:Lcom/sunrise/f/i;

.field protected e:Z

.field protected f:Z

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/sunrise/f/z;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/sunrise/h/c;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/sunrise/f/y;->e:Z

    iput-boolean v2, p0, Lcom/sunrise/f/y;->f:Z

    iput-object p2, p0, Lcom/sunrise/f/y;->a:Lcom/sunrise/h/c;

    new-instance v0, Lcom/sunrise/f/i;

    invoke-direct {v0, p1, p2}, Lcom/sunrise/f/i;-><init>(Ljava/lang/Class;Lcom/sunrise/h/c;)V

    iput-object v0, p0, Lcom/sunrise/f/y;->d:Lcom/sunrise/f/i;

    invoke-virtual {p2}, Lcom/sunrise/h/c;->f()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/f/y;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sunrise/h/c;->d()Lcom/sunrise/b/b;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/sunrise/b/b;->f()[Lcom/sunrise/f/ba;

    move-result-object v4

    array-length v5, v4

    move v0, v2

    :goto_0
    if-ge v0, v5, :cond_5

    aget-object v6, v4, v0

    sget-object v7, Lcom/sunrise/f/ba;->c:Lcom/sunrise/f/ba;

    if-ne v6, v7, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3}, Lcom/sunrise/b/b;->c()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sunrise/f/y;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/sunrise/f/y;->j:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sunrise/f/y;->j:Ljava/lang/String;

    :cond_0
    invoke-interface {v3}, Lcom/sunrise/b/b;->f()[Lcom/sunrise/f/ba;

    move-result-object v4

    array-length v5, v4

    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    sget-object v7, Lcom/sunrise/f/ba;->d:Lcom/sunrise/f/ba;

    if-ne v6, v7, :cond_3

    iput-boolean v1, p0, Lcom/sunrise/f/y;->e:Z

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget-object v7, Lcom/sunrise/f/ba;->e:Lcom/sunrise/f/ba;

    if-ne v6, v7, :cond_1

    iput-boolean v1, p0, Lcom/sunrise/f/y;->f:Z

    goto :goto_3

    :cond_4
    invoke-interface {v3}, Lcom/sunrise/b/b;->f()[Lcom/sunrise/f/ba;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/f/ba;->a([Lcom/sunrise/f/ba;)I

    move-result v1

    iput v1, p0, Lcom/sunrise/f/y;->c:I

    :goto_4
    iput-boolean v0, p0, Lcom/sunrise/f/y;->b:Z

    return-void

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_4
.end method


# virtual methods
.method public a(Lcom/sunrise/f/y;)I
    .locals 2

    iget-object v0, p0, Lcom/sunrise/f/y;->a:Lcom/sunrise/h/c;

    iget-object v1, p1, Lcom/sunrise/f/y;->a:Lcom/sunrise/h/c;

    invoke-virtual {v0, v1}, Lcom/sunrise/h/c;->a(Lcom/sunrise/h/c;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunrise/f/y;->a:Lcom/sunrise/h/c;

    invoke-virtual {v0, p1}, Lcom/sunrise/h/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/sunrise/f/af;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    iget-boolean v1, v0, Lcom/sunrise/f/az;->e:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/sunrise/f/az;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sunrise/f/y;->h:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sunrise/f/y;->a:Lcom/sunrise/h/c;

    iget-object v2, v2, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\':"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sunrise/f/y;->h:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/sunrise/f/y;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sunrise/f/y;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sunrise/f/y;->i:Ljava/lang/String;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sunrise/f/y;->a:Lcom/sunrise/h/c;

    iget-object v2, v2, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sunrise/f/y;->i:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/sunrise/f/y;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunrise/f/y;->k:Lcom/sunrise/f/z;

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/sunrise/f/y;->a:Lcom/sunrise/h/c;

    iget-object v0, v0, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/sunrise/f/af;->a(Ljava/lang/Class;)Lcom/sunrise/f/ap;

    move-result-object v1

    new-instance v2, Lcom/sunrise/f/z;

    invoke-direct {v2, v1, v0}, Lcom/sunrise/f/z;-><init>(Lcom/sunrise/f/ap;Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/sunrise/f/y;->k:Lcom/sunrise/f/z;

    :cond_0
    iget-object v0, p0, Lcom/sunrise/f/y;->k:Lcom/sunrise/f/z;

    iget-object v1, p0, Lcom/sunrise/f/y;->a:Lcom/sunrise/h/c;

    iget v5, v1, Lcom/sunrise/h/c;->h:I

    if-nez p2, :cond_7

    iget-object v1, v0, Lcom/sunrise/f/z;->b:Ljava/lang/Class;

    iget-object v2, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    const-class v3, Ljava/lang/Number;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v0, p0, Lcom/sunrise/f/y;->c:I

    sget-object v1, Lcom/sunrise/f/ba;->i:Lcom/sunrise/f/ba;

    iget v1, v1, Lcom/sunrise/f/ba;->C:I

    invoke-virtual {v2, v0, v1}, Lcom/sunrise/f/az;->a(II)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-class v3, Ljava/lang/String;

    if-ne v3, v1, :cond_3

    iget v0, p0, Lcom/sunrise/f/y;->c:I

    sget-object v1, Lcom/sunrise/f/ba;->h:Lcom/sunrise/f/ba;

    iget v1, v1, Lcom/sunrise/f/ba;->C:I

    invoke-virtual {v2, v0, v1}, Lcom/sunrise/f/az;->a(II)V

    goto :goto_1

    :cond_3
    const-class v3, Ljava/lang/Boolean;

    if-ne v3, v1, :cond_4

    iget v0, p0, Lcom/sunrise/f/y;->c:I

    sget-object v1, Lcom/sunrise/f/ba;->j:Lcom/sunrise/f/ba;

    iget v1, v1, Lcom/sunrise/f/ba;->C:I

    invoke-virtual {v2, v0, v1}, Lcom/sunrise/f/az;->a(II)V

    goto :goto_1

    :cond_4
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v0, p0, Lcom/sunrise/f/y;->c:I

    sget-object v1, Lcom/sunrise/f/ba;->g:Lcom/sunrise/f/ba;

    iget v1, v1, Lcom/sunrise/f/ba;->C:I

    invoke-virtual {v2, v0, v1}, Lcom/sunrise/f/az;->a(II)V

    goto :goto_1

    :cond_5
    iget-object v0, v0, Lcom/sunrise/f/z;->a:Lcom/sunrise/f/ap;

    sget-object v1, Lcom/sunrise/f/ba;->c:Lcom/sunrise/f/ba;

    invoke-virtual {v2, v1}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v1

    if-eqz v1, :cond_6

    instance-of v1, v0, Lcom/sunrise/f/ag;

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Lcom/sunrise/f/az;->b()V

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sunrise/f/y;->a:Lcom/sunrise/h/c;

    iget-object v3, v1, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sunrise/f/y;->a:Lcom/sunrise/h/c;

    iget-object v4, v1, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/sunrise/f/ap;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/sunrise/f/y;->a:Lcom/sunrise/h/c;

    iget-boolean v1, v1, Lcom/sunrise/h/c;->n:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/sunrise/f/y;->f:Z

    if-eqz v1, :cond_8

    iget-object v0, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-boolean v1, p0, Lcom/sunrise/f/y;->e:Z

    if-eqz v1, :cond_9

    iget-object v0, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, v0, Lcom/sunrise/f/z;->b:Ljava/lang/Class;

    if-ne v1, v2, :cond_a

    iget-object v0, v0, Lcom/sunrise/f/z;->a:Lcom/sunrise/f/ap;

    :goto_2
    iget-object v1, p0, Lcom/sunrise/f/y;->j:Ljava/lang/String;

    if-eqz v1, :cond_c

    instance-of v1, v0, Lcom/sunrise/f/s;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/sunrise/f/s;

    iget-object v1, p0, Lcom/sunrise/f/y;->d:Lcom/sunrise/f/i;

    invoke-interface {v0, p1, p2, v1}, Lcom/sunrise/f/s;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Lcom/sunrise/f/i;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1, v1}, Lcom/sunrise/f/af;->a(Ljava/lang/Class;)Lcom/sunrise/f/ap;

    move-result-object v0

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/sunrise/f/y;->j:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/sunrise/f/af;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    iget-object v1, p0, Lcom/sunrise/f/y;->a:Lcom/sunrise/h/c;

    iget-object v3, v1, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sunrise/f/y;->a:Lcom/sunrise/h/c;

    iget-object v4, v1, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/sunrise/f/ap;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto/16 :goto_1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    check-cast p1, Lcom/sunrise/f/y;

    invoke-virtual {p0, p1}, Lcom/sunrise/f/y;->a(Lcom/sunrise/f/y;)I

    move-result v0

    return v0
.end method
