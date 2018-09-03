.class public abstract Lcom/sunrise/e/l;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/sunrise/h/c;

.field protected final b:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/sunrise/h/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunrise/e/l;->b:Ljava/lang/Class;

    iput-object p2, p0, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Lcom/sunrise/d/a;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/e/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;J)V
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/e/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v0, v0, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v0, v0, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-boolean v1, v1, Lcom/sunrise/h/c;->g:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v1, v1, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set property error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v3, v3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v1, v1, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v1, v1, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_4
    const-class v1, Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v0, v0, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-boolean v1, v1, Lcom/sunrise/h/c;->g:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v1, v1, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v1, v2, :cond_8

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v1, v1, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne v1, v2, :cond_9

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v1, v1, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v1, v2, :cond_a

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_a
    const-class v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v2, v2, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_c
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sunrise/e/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Z)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/e/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
