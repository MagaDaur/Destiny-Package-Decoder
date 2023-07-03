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
  float4 cb0[159];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t2.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t2.Load(r2.x).xyzw;
    r4.xyzw = t2.Load(r2.y).xyzw;
    r5.xyzw = t2.Load(r2.z).xyzw;
    r2.xyzw = t2.Load(r2.w).xyzw;
    r0.y = cb0[22].x / r5.x;
    r0.zw = saturate(r2.zw);
    r0.zw = r0.zw * float2(-0.5,0.900000036) + float2(1,0.300000012);
    r6.x = saturate(r4.x);
    r6.y = 1 + -r6.x;
    r6.y = r6.y * 0.699999988 + 0.300000012;
    r0.w = r6.y * r0.w;
    r7.xyzw = r6.xxxx * float4(-6.18030214,7.07963419,0,15.527997) + float4(6.49648094,-18.3834496,0,-3.22418094);
    r6.y = r6.x * r6.x;
    r6.yz = r7.xy * r6.yy + r7.zw;
    r7.xyz = cmp(r6.xxx >= float3(0,0.596666992,1));
    r7.xyw = r7.xyz ? float3(1,1,1) : 0;
    r7.xyz = r7.xyw + r7.yww;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r6.xy = r7.xy * r6.yz;
    r6.xy = float2(2,2) * r6.xy;
    r6.x = r6.x + r6.y;
    r6.x = r7.z * 2 + r6.x;
    r6.x = saturate(r7.w * 1 + r6.x);
    r4.x = r4.x + r0.y;
    r6.yzw = cb0[157].xyz * cb0[156].xxx;
    r6.yzw = r6.yzw * float3(0.75,0.75,0.75) + r1.xyz;
    r0.y = saturate(cb0[158].x);
    r0.y = 1 + -r0.y;
    r6.yzw = r6.yzw * r0.yyy;
    r7.xyz = r6.yzw * cb0[144].xxx + r3.xyz;
    r0.y = cb0[158].x * r4.y;
    r4.z = r0.y * 6.28318548 + r4.z;
    r0.y = dot(r1.xyz, r1.xyz);
    r0.y = sqrt(r0.y);
    r7.w = 9.99999975e-006 + r0.y;
    r8.xyz = r1.xyz / r7.www;
    r8.xyz = r8.xyz * float3(0.100000001,0.100000001,0.100000001) + r3.xyz;
    r0.y = cmp(0.00100000005 < r0.y);
    r8.xyz = r0.yyy ? r8.xyz : r3.xyz;
    r0.y = dot(r6.yzw, r6.yzw);
    r0.y = sqrt(r0.y);
    r9.xy = float2(9.99999975e-006,9.99999975e-005) + r0.yy;
    r9.xzw = r6.yzw / r9.xxx;
    r9.xzw = r9.xzw * float3(0.100000001,0.100000001,0.100000001) + r7.xyz;
    r7.w = cmp(0.00100000005 < r0.y);
    r9.xzw = r7.www ? r9.xzw : r7.xyz;
    r10.xyz = cb12[1].xyw * r8.yyy;
    r8.xyw = cb12[0].xyw * r8.xxx + r10.xyz;
    r8.xyz = cb12[2].xyw * r8.zzz + r8.xyw;
    r8.xyz = cb12[3].xyw + r8.xyz;
    r10.xyz = cb12[1].xyw * r9.zzz;
    r10.xyz = cb12[0].xyw * r9.xxx + r10.xyz;
    r9.xzw = cb12[2].xyw * r9.www + r10.xyz;
    r9.xzw = cb12[3].xyw + r9.xzw;
    r8.xy = r8.xy / r8.zz;
    r8.xy = r8.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r9.xz = r9.xz / r9.ww;
    r9.xz = r9.xz * float2(0.5,-0.5) + float2(0.5,0.5);
    r8.xy = cb12[12].xy * r8.xy;
    r10.xy = (int2)r8.xy;
    r10.zw = float2(0,0);
    r7.w = t1.Load(r10.xyw).x;
    r7.w = r7.w * cb0[0].y + cb0[0].x;
    r7.w = 1 / r7.w;
    r8.xy = cb12[12].xy * r9.xz;
    r11.xy = (int2)r8.xy;
    r11.zw = float2(0,0);
    r8.x = t1.Load(r11.xyw).x;
    r8.x = r8.x * cb0[0].y + cb0[0].x;
    r8.x = 1 / r8.x;
    r10.xyz = t0.Load(r10.xyz).xyz;
    r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r8.y = dot(r10.xyz, r10.xyz);
    r8.y = rsqrt(r8.y);
    r10.xyz = r10.xyz * r8.yyy;
    r11.xyz = t0.Load(r11.xyz).xyz;
    r11.xyz = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r8.y = dot(r11.xyz, r11.xyz);
    r8.y = rsqrt(r8.y);
    r11.xyz = r11.xyz * r8.yyy;
    r8.y = -r8.x + r7.w;
    r8.w = dot(r10.xyz, r11.xyz);
    r8.w = 1 + -r8.w;
    r7.w = r7.w + -r8.z;
    r8.x = r8.x + -r9.w;
    r7.w = r8.x * r7.w;
    r7.w = cmp(r7.w < 0);
    r8.y = cmp(abs(r8.y) < 2.5);
    r7.w = r7.w ? r8.y : 0;
    r8.y = cmp(r8.w < 0.600000024);
    r7.w = r7.w ? r8.y : 0;
    r10.x = cb0[22].x + r1.w;
    r12.y = 1 + r3.w;
    r8.yzw = r6.yzw / r9.yyy;
    r1.w = dot(r11.xyz, r8.yzw);
    r9.x = r1.w + r1.w;
    r9.xyz = -r9.xxx * r11.xyz + r8.yzw;
    r8.yzw = -r1.www * r11.xyz + r8.yzw;
    r1.w = dot(r8.yzw, r8.yzw);
    r1.w = rsqrt(r1.w);
    r8.yzw = r8.yzw * r1.www + -r9.xyz;
    r8.yzw = r6.xxx * r8.yzw + r9.xyz;
    r1.w = dot(r8.yzw, r8.yzw);
    r1.w = rsqrt(r1.w);
    r8.yzw = r8.yzw * r1.www;
    r8.yzw = r8.yzw * r0.yyy;
    r8.yzw = r8.yzw * r0.www;
    r9.xyz = r8.yzw * cb0[22].xxx + r3.xyz;
    r7.xyz = r7.www ? r9.xyz : r7.xyz;
    r6.xyz = r7.www ? r8.yzw : r6.yzw;
    r12.x = 0;
    r10.y = r3.w;
    r8.yz = r7.ww ? r12.xy : r10.xy;
    r0.w = cmp(abs(r8.x) < 0.5);
    r0.y = cmp(r0.y < r0.z);
    r0.y = r0.w ? r0.y : 0;
    r3.xyz = r0.yyy ? r3.xyz : r7.xyz;
    r1.xyz = r0.yyy ? r1.xyz : r6.xyz;
    r0.z = max(1, r8.z);
    r3.w = r0.y ? r0.z : r8.z;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
    r1.w = r8.y;
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
  }
  return;
}