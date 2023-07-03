// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:39 2023
Buffer<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[181];
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
    r0.y = mad(6, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t2.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t2.Load(r2.x).xyzw;
    r4.yzw = t2.Load(r2.y).yzw;
    r5.xyzw = t2.Load(r2.z).xyzw;
    r2.xyzw = t2.Load(r2.w).xyzw;
    r0.y = (int)r0.y + 5;
    r6.x = t2.Load(r0.y).x;
    r0.y = cb0[22].x / r5.z;
    r4.y = r4.y + r0.y;
    r4.x = r4.y * r5.z;
    r0.yzw = cb0[179].xyz * cb0[178].xxx;
    r0.yzw = r0.yzw * float3(0.75,0.75,0.75) + r1.xyz;
    r7.x = saturate(cb0[180].x);
    r7.x = 1 + -r7.x;
    r0.yzw = r7.xxx * r0.yzw;
    r7.xyz = cb0[165].xxx * r0.yzw;
    r8.xyz = r0.yzw * cb0[165].xxx + r3.xyz;
    r7.w = cb0[180].x * r4.z;
    r4.w = r7.w * 6.28318548 + r4.w;
    r7.w = dot(r1.xyz, r1.xyz);
    r7.w = sqrt(r7.w);
    r8.w = 9.99999975e-006 + r7.w;
    r9.xyz = r1.xyz / r8.www;
    r9.xyz = r9.xyz * float3(0.0350000001,0.0350000001,0.0350000001) + r3.xyz;
    r7.w = cmp(0.00100000005 < r7.w);
    r9.xyz = r7.www ? r9.xyz : r3.xyz;
    r7.w = dot(r0.yzw, r0.yzw);
    r7.w = sqrt(r7.w);
    r8.w = 9.99999975e-006 + r7.w;
    r10.xyz = r0.yzw / r8.www;
    r10.xyz = r10.xyz * float3(0.0350000001,0.0350000001,0.0350000001) + r8.xyz;
    r7.w = cmp(0.00100000005 < r7.w);
    r10.xyz = r7.www ? r10.xyz : r8.xyz;
    r11.xyz = cb12[1].xyw * r9.yyy;
    r9.xyw = cb12[0].xyw * r9.xxx + r11.xyz;
    r9.xyz = cb12[2].xyw * r9.zzz + r9.xyw;
    r9.xyz = cb12[3].xyw + r9.xyz;
    r11.xyz = cb12[1].xyw * r10.yyy;
    r10.xyw = cb12[0].xyw * r10.xxx + r11.xyz;
    r10.xyz = cb12[2].xyw * r10.zzz + r10.xyw;
    r10.xyz = cb12[3].xyw + r10.xyz;
    r9.xy = r9.xy / r9.zz;
    r9.xy = r9.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r10.xy = r10.xy / r10.zz;
    r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r9.xy = cb12[12].xy * r9.xy;
    r11.xy = (int2)r9.xy;
    r11.zw = float2(0,0);
    r7.w = t1.Load(r11.xyw).x;
    r7.w = r7.w * cb0[0].y + cb0[0].x;
    r7.w = 1 / r7.w;
    r9.xy = cb12[12].xy * r10.xy;
    r12.xy = (int2)r9.xy;
    r12.zw = float2(0,0);
    r8.w = t1.Load(r12.xyw).x;
    r8.w = r8.w * cb0[0].y + cb0[0].x;
    r8.w = 1 / r8.w;
    r9.xyw = t0.Load(r11.xyz).xyz;
    r9.xyw = r9.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r10.x = dot(r9.xyw, r9.xyw);
    r10.x = rsqrt(r10.x);
    r9.xyw = r10.xxx * r9.xyw;
    r10.xyw = t0.Load(r12.xyz).xyz;
    r10.xyw = r10.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r11.x = dot(r10.xyw, r10.xyw);
    r11.x = rsqrt(r11.x);
    r10.xyw = r11.xxx * r10.xyw;
    r11.x = -r8.w + r7.w;
    r9.x = dot(r9.xyw, r10.xyw);
    r9.x = 1 + -r9.x;
    r7.w = r7.w + -r9.z;
    r8.w = r8.w + -r10.z;
    r9.y = r8.w * r7.w;
    r9.xy = cmp(r9.xy < float2(0.600000024,0));
    r9.z = cmp(abs(r11.x) < 2.5);
    r9.y = r9.z ? r9.y : 0;
    r9.x = r9.x ? r9.y : 0;
    r9.y = abs(r8.w) + abs(r7.w);
    r7.w = abs(r7.w) / r9.y;
    r11.x = cb0[22].x + r1.w;
    r12.y = 1 + r3.w;
    r1.w = dot(r10.xyw, r0.yzw);
    r9.y = r1.w + r1.w;
    r9.yzw = -r9.yyy * r10.xyw + r0.yzw;
    r9.yzw = float3(0.00100000005,0.00100000005,0.00100000005) * r9.yzw;
    r7.xyz = r7.www * r7.xyz + r3.xyz;
    r7.w = 1 + -r7.w;
    r10.xyz = r9.yzw * r7.www;
    r7.xyz = r10.xyz * cb0[22].xxx + r7.xyz;
    r7.xyz = r9.xxx ? r7.xyz : r8.xyz;
    r0.yzw = r9.xxx ? r9.yzw : r0.yzw;
    r12.x = 0;
    r11.y = r3.w;
    r8.xy = r9.xx ? r12.xy : r11.xy;
    r3.w = cmp(abs(r8.w) < 0.100000001);
    r1.w = cmp(abs(r1.w) < 100);
    r1.w = r3.w ? r1.w : 0;
    r3.xyz = r1.www ? r3.xyz : r7.xyz;
    r7.xyz = r1.www ? r1.xyz : r0.yzw;
    r0.y = max(1, r8.y);
    r3.w = r1.w ? r0.y : r8.y;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
    r7.w = r8.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r7.xyzw
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
    r6.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r6.xyzw
  }
  return;
}