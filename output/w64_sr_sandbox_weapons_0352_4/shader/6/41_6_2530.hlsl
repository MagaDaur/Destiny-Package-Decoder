// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:40 2023
Buffer<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[156];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = (uint)cb0[90].x;
    r0.y = mad(6, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t2.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t2.Load(r2.x).xyzw;
    r4.xyzw = t2.Load(r2.y).xyzw;
    r5.xyzw = t2.Load(r2.z).xyzw;
    r2.xyzw = t2.Load(r2.w).xyzw;
    r0.y = (int)r0.y + 5;
    r6.xy = t2.Load(r0.y).xy;
    r0.y = cb0[22].x / r5.x;
    r0.zw = saturate(r6.xy);
    r0.zw = r0.zw * float2(-0.5,0.900000036) + float2(1,0.300000012);
    r7.x = saturate(r4.x);
    r7.y = 1 + -r7.x;
    r7.y = r7.y * 0.699999988 + 0.300000012;
    r0.w = r7.y * r0.w;
    r8.xyzw = r7.xxxx * float4(-6.18030214,7.07963419,0,15.527997) + float4(6.49648094,-18.3834496,0,-3.22418094);
    r7.y = r7.x * r7.x;
    r7.yz = r8.xy * r7.yy + r8.zw;
    r8.xyz = cmp(r7.xxx >= float3(0,0.596666992,1));
    r8.xyw = r8.xyz ? float3(1,1,1) : 0;
    r8.xyz = r8.xyw + r8.yww;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r7.xy = r8.xy * r7.yz;
    r7.xy = float2(2,2) * r7.xy;
    r7.x = r7.x + r7.y;
    r7.x = r8.z * 2 + r7.x;
    r7.x = saturate(r8.w * 1 + r7.x);
    r4.x = r4.x + r0.y;
    r7.yzw = cb0[154].xyz * cb0[153].xxx;
    r7.yzw = r7.yzw * float3(0.75,0.75,0.75) + r1.xyz;
    r0.y = saturate(cb0[155].x);
    r0.y = 1 + -r0.y;
    r7.yzw = r7.yzw * r0.yyy;
    r8.xyz = r7.yzw * cb0[141].xxx + r3.xyz;
    r0.y = cb0[155].x * r4.y;
    r4.z = r0.y * 6.28318548 + r4.z;
    r0.y = dot(r1.xyz, r1.xyz);
    r0.y = sqrt(r0.y);
    r8.w = 9.99999975e-006 + r0.y;
    r9.xyz = r1.xyz / r8.www;
    r9.xyz = r9.xyz * float3(0.100000001,0.100000001,0.100000001) + r3.xyz;
    r0.y = cmp(0.00100000005 < r0.y);
    r9.xyz = r0.yyy ? r9.xyz : r3.xyz;
    r0.y = dot(r7.yzw, r7.yzw);
    r0.y = sqrt(r0.y);
    r10.xy = float2(9.99999975e-006,9.99999975e-005) + r0.yy;
    r10.xzw = r7.yzw / r10.xxx;
    r10.xzw = r10.xzw * float3(0.100000001,0.100000001,0.100000001) + r8.xyz;
    r8.w = cmp(0.00100000005 < r0.y);
    r10.xzw = r8.www ? r10.xzw : r8.xyz;
    r11.xyz = cb12[1].xyw * r9.yyy;
    r9.xyw = cb12[0].xyw * r9.xxx + r11.xyz;
    r9.xyz = cb12[2].xyw * r9.zzz + r9.xyw;
    r9.xyz = cb12[3].xyw + r9.xyz;
    r11.xyz = cb12[1].xyw * r10.zzz;
    r11.xyz = cb12[0].xyw * r10.xxx + r11.xyz;
    r10.xzw = cb12[2].xyw * r10.www + r11.xyz;
    r10.xzw = cb12[3].xyw + r10.xzw;
    r9.xy = r9.xy / r9.zz;
    r9.xy = r9.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r10.xz = r10.xz / r10.ww;
    r10.xz = r10.xz * float2(0.5,-0.5) + float2(0.5,0.5);
    r9.xy = cb12[12].xy * r9.xy;
    r11.xy = (int2)r9.xy;
    r11.zw = float2(0,0);
    r8.w = t1.Load(r11.xyw).x;
    r8.w = r8.w * cb0[0].y + cb0[0].x;
    r8.w = 1 / r8.w;
    r9.xy = cb12[12].xy * r10.xz;
    r12.xy = (int2)r9.xy;
    r12.zw = float2(0,0);
    r9.x = t1.Load(r12.xyw).x;
    r9.x = r9.x * cb0[0].y + cb0[0].x;
    r9.x = 1 / r9.x;
    r11.xyz = t0.Load(r11.xyz).xyz;
    r11.xyz = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r9.y = dot(r11.xyz, r11.xyz);
    r9.y = rsqrt(r9.y);
    r11.xyz = r11.xyz * r9.yyy;
    r12.xyz = t0.Load(r12.xyz).xyz;
    r12.xyz = r12.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r9.y = dot(r12.xyz, r12.xyz);
    r9.y = rsqrt(r9.y);
    r12.xyz = r12.xyz * r9.yyy;
    r9.y = -r9.x + r8.w;
    r9.w = dot(r11.xyz, r12.xyz);
    r9.w = 1 + -r9.w;
    r8.w = r8.w + -r9.z;
    r9.x = r9.x + -r10.w;
    r8.w = r9.x * r8.w;
    r8.w = cmp(r8.w < 0);
    r9.y = cmp(abs(r9.y) < 2.5);
    r8.w = r8.w ? r9.y : 0;
    r9.y = cmp(r9.w < 0.600000024);
    r8.w = r8.w ? r9.y : 0;
    r11.x = cb0[22].x + r1.w;
    r13.y = 1 + r3.w;
    r9.yzw = r7.yzw / r10.yyy;
    r1.w = dot(r12.xyz, r9.yzw);
    r10.x = r1.w + r1.w;
    r10.xyz = -r10.xxx * r12.xyz + r9.yzw;
    r9.yzw = -r1.www * r12.xyz + r9.yzw;
    r1.w = dot(r9.yzw, r9.yzw);
    r1.w = rsqrt(r1.w);
    r9.yzw = r9.yzw * r1.www + -r10.xyz;
    r9.yzw = r7.xxx * r9.yzw + r10.xyz;
    r1.w = dot(r9.yzw, r9.yzw);
    r1.w = rsqrt(r1.w);
    r9.yzw = r9.yzw * r1.www;
    r9.yzw = r9.yzw * r0.yyy;
    r9.yzw = r9.yzw * r0.www;
    r10.xyz = r9.yzw * cb0[22].xxx + r3.xyz;
    r8.xyz = r8.www ? r10.xyz : r8.xyz;
    r7.xyz = r8.www ? r9.yzw : r7.yzw;
    r13.x = 0;
    r11.y = r3.w;
    r9.yz = r8.ww ? r13.xy : r11.xy;
    r0.w = cmp(abs(r9.x) < 0.5);
    r0.y = cmp(r0.y < r0.z);
    r0.y = r0.w ? r0.y : 0;
    r3.xyz = r0.yyy ? r3.xyz : r8.xyz;
    r1.xyz = r0.yyy ? r1.xyz : r7.xyz;
    r0.z = max(1, r9.z);
    r3.w = r0.y ? r0.z : r9.z;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
    r1.w = r9.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r5.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
    r0.y = (int)r0.x + 5;
    r6.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r6.xyzw
  }
  return;
}