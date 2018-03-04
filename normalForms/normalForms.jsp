<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<div class="container">
    <h1>关系模式的范式理论要点</h1>
    <hr/>
    <h5>范式有什么用？</h5>
    <p>关系模式的范式是衡量关系模式设计的好与坏的评价标准。<br>关系存在冗余和异常现象和FD的存在有密切的关系，如果没有FD，关系模式也就不可能有冗余问题了。当FD存在时，关系就可能存在冗余和异常问题。<br>而范式正是基于FD的概念。常用的范式有1NF,3NF 和BCNF。2NF范式
        被3NF的概念涵盖，无需考虑。下面一一介绍。
    </p>
    

    <hr/>
    <h5>什么是1NF(第一范式)？</h5>
    <p>没有多值属性的关系模式就是第一范式的模式。<br>
        这样的模式才是规范化的关系。关系数据库研究的关系都是规范化的关系。（非规范化的关系又是一篇新的天地。）<br>
        当出现多值属性时，就需要把它转换为多个单值属性或1:N 的弱实体:
    </p>
    <div class="row">
        <img id="imgDispId" src="${pageContext.request.contextPath}/resources/article/${goods.link}/src/weakEntity.png" alt="the image to upload" />
    </div>

    <hr/>
    <h5>什么是3NF(第三范式)？</h5>
    <p>非主属性不传递依赖于候选键的1NF关系模式。<br>
        <p>从FD角度来说，对于关系模式R的FD集中的每个非平凡的FD X -> Y，都有X是超键，或Y的每个属性都是主属性。<br></p>
        传递依赖的3种情形：
        
        <div class="row">
            <img id="imgDispId" src="${pageContext.request.contextPath}/resources/article/${goods.link}/src/not3NF.png" alt="the image to upload" />
    </div>
    
    <p>不满足3NF范式的关系模式必定存在非平凡的FD X->Z ,Z是非主属性，X不是候选键。也即是一个传递依赖，这时应分解为R1（XZ），R2（Y），其中Y=U-Z。分解后的R1，R2若仍不是3NF应继续上述分解。</p>

    <p>局部依赖和传递依赖是模式产生冗余和异常的2个重要原因。能够消除很大一部分存储异常，而对于非3NF模式，通常需要变换为3NF或更高级范式。</p>

    <h5>什么是BCNF范式？</h5>
    <p>3NF范式排除主属性对候选键的传递依赖，也就是1NF模式的每个属性都不传递依赖于候选键，那么称该关系模式是BCNF范式的模式<br>
        对于关系模式的FD集中的每个FD X -> Y,都有X是R的超键，那么称R是BCNF的模式。
    </p>
    <p>这个定义表明如果非平凡的FD X->Y 中不包含超键，那么Y必定传递依赖于候选键。<br></p>
    <div class="row">
        <img id="imgDispId" src="${pageContext.request.contextPath}/resources/article/${goods.link}/src/BCNF.png" alt="the image to upload" />
    </div>
    
    <h5>模式设计方法结论</h5>
    关系模式R相对于函数依赖集F分解成数据库模式p = {R1,...,Rk},一般应具备3个特性：
    1. p是BCNF模式集或3NF模式集。<br>
    2. 无损分解。<br>
    3. 保持函数依赖。<br>
    在进行关系数据库设计时，应作权衡，尽可能使数据库模式保持最好的特性。

    <small>作者：翟光 本文是《数据库系统教程》的学习笔记</small>

        
</div>
