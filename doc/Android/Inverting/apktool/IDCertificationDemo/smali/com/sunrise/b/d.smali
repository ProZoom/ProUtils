.class public interface abstract annotation Lcom/sunrise/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/sunrise/b/d;
        a = true
        b = {}
        c = {}
        d = {}
        e = {}
        f = {}
        g = true
        h = Ljava/lang/Void;
        i = Ljava/lang/Void;
        j = ""
        k = {}
        l = Ljava/lang/Void;
        m = Ljava/lang/Void;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()[Ljava/lang/String;
.end method

.method public abstract c()[Ljava/lang/String;
.end method

.method public abstract d()[Ljava/lang/String;
.end method

.method public abstract e()[Lcom/sunrise/f/ba;
.end method

.method public abstract f()[Lcom/sunrise/d/c;
.end method

.method public abstract g()Z
.end method

.method public abstract h()Ljava/lang/Class;
.end method

.method public abstract i()Ljava/lang/Class;
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public abstract k()[Ljava/lang/Class;
.end method

.method public abstract l()Ljava/lang/Class;
.end method

.method public abstract m()Ljava/lang/Class;
.end method
