// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:35 2023
Buffer<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[147];
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
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t2.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t2.Load(r2.x).xyzw;
    r4.xyzw = t2.Load(r2.y).xyzw;
    r5.xyzw = t2.Load(r2.z).xyzw;
    r2.xyz = t2.Load(r2.w).xyz;
    r0.y = cb0[22].x / r4.z;
    r6.w = r1.w + r0.y;
    r0.yzw = cb0[145].xyz * cb0[144].xxx + r1.xyz;
    r7.xyz = cb0[131].xxx * r0.yzw;
    r8.xyz = r0.yzw * cb0[131].xxx + r3.xyz;
    r1.w = saturate(cb0[146].x + cb0[146].x);
    r1.w = 1 + -r1.w;
    r9.w = r3.w * r1.w;
    r1.w = cb0[146].x * r9.w;
    r4.x = r1.w * 6.28318548 + r4.x;
    r1.w = dot(r1.xyz, r1.xyz);
    r1.w = sqrt(r1.w);
    r3.w = 9.99999975e-006 + r1.w;
    r10.xyz = r1.xyz / r3.www;
    r10.xyz = r10.xyz * float3(0.100000001,0.100000001,0.100000001) + r3.xyz;
    r1.w = cmp(0.00100000005 < r1.w);
    r10.xyz = r1.www ? r10.xyz : r3.xyz;
    r1.w = dot(r0.yzw, r0.yzw);
    r1.w = sqrt(r1.w);
    r3.w = 9.99999975e-006 + r1.w;
    r11.xyz = r0.yzw / r3.www;
    r11.xyz = r11.xyz * float3(0.100000001,0.100000001,0.100000001) + r8.xyz;
    r1.w = cmp(0.00100000005 < r1.w);
    r11.xyz = r1.www ? r11.xyz : r8.xyz;
    r12.xyz = cb12[1].xyw * r10.yyy;
    r10.xyw = cb12[0].xyw * r10.xxx + r12.xyz;
    r10.xyz = cb12[2].xyw * r10.zzz + r10.xyw;
    r10.xyz = cb12[3].xyw + r10.xyz;
    r12.xyz = cb12[1].xyw * r11.yyy;
    r11.xyw = cb12[0].xyw * r11.xxx + r12.xyz;
    r11.xyz = cb12[2].xyw * r11.zzz + r11.xyw;
    r11.xyz = cb12[3].xyw + r11.xyz;
    r10.xy = r10.xy / r10.zz;
    r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r11.xy = r11.xy / r11.zz;
    r11.xy = r11.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r10.xy = cb12[12].xy * r10.xy;
    r12.xy = (int2)r10.xy;
    r12.zw = float2(0,0);
    r1.w = t1.Load(r12.xyw).x;
    r1.w = r1.w * cb0[0].y + cb0[0].x;
    r1.w = 1 / r1.w;
    r10.xy = cb12[12].xy * r11.xy;
    r13.xy = (int2)r10.xy;
    r13.zw = float2(0,0);
    r3.w = t1.Load(r13.xyw).x;
    r3.w = r3.w * cb0[0].y + cb0[0].x;
    r3.w = 1 / r3.w;
    r10.xyw = t0.Load(r12.xyz).xyz;
    r10.xyw = r10.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r7.w = dot(r10.xyw, r10.xyw);
    r7.w = rsqrt(r7.w);
    r10.xyw = r10.xyw * r7.www;
    r11.xyw = t0.Load(r13.xyz).xyz;
    r11.xyw = r11.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r7.w = dot(r11.xyw, r11.xyw);
    r7.w = rsqrt(r7.w);
    r11.xyw = r11.xyw * r7.www;
    r7.w = -r3.w + r1.w;
    r8.w = dot(r10.xyw, r11.xyw);
    r8.w = 1 + -r8.w;
    r1.w = r1.w + -r10.z;
    r3.w = r3.w + -r11.z;
    r10.x = r3.w * r1.w;
    r10.x = cmp(r10.x < 0);
    r7.w = cmp(abs(r7.w) < 2.5);
    r7.w = r7.w ? r10.x : 0;
    r8.w = cmp(r8.w < 0.600000024);
    r7.w = r7.w ? r8.w : 0;
    r8.w = abs(r3.w) + abs(r1.w);
    r1.w = abs(r1.w) / r8.w;
    r8.w = dot(r11.xyw, r0.yzw);
    r10.x = r8.w + r8.w;
    r10.xyz = -r10.xxx * r11.xyw + r0.yzw;
    r10.xyz = float3(0.340000004,0.340000004,0.340000004) * r10.xyz;
    r7.xyz = r1.www * r7.xyz + r3.xyz;
    r1.w = 1 + -r1.w;
    r12.xyz = r10.xyz * r1.www;
    r7.xyz = r12.xyz * cb0[22].xxx + r7.xyz;
    r7.xyz = r7.www ? r7.xyz : r8.xyz;
    r8.xyz = r7.www ? r10.xyz : r0.yzw;
    r1.w = cmp(abs(r3.w) < 0.100000001);
    r10.xyz = -r8.www * r11.xyw + r0.yzw;
    r7.w = dot(r10.xyz, r10.xyz);
    r7.w = rsqrt(r7.w);
    r10.xyz = r10.xyz * r7.www;
    r0.y = dot(r10.xyz, r0.yzw);
    r0.z = 0.925000012 * r0.y;
    r0.w = cmp(abs(r8.w) < 0.550000012);
    r0.y = cmp(r0.y < 0.0378378369);
    r0.yw = r1.ww ? r0.yw : 0;
    r0.z = r0.y ? 9.99999975e-005 : r0.z;
    r10.xyz = r10.xyz * r0.zzz;
    r8.xyz = r0.www ? r10.xyz : r8.xyz;
    r10.xyz = cb12[7].xyz + -r7.xyz;
    r0.z = dot(r10.xyz, r10.xyz);
    r0.z = rsqrt(r0.z);
    r10.xyz = r10.xyz * r0.zzz;
    r0.z = 0.100000001 + -r3.w;
    r10.xyz = r10.xyz * r0.zzz + r3.xyz;
    r10.xyz = r8.xyz * cb0[22].xxx + r10.xyz;
    r7.xyz = r0.www ? r10.xyz : r7.xyz;
    r0.y = r0.w ? r0.y : 0;
    r9.xyz = r0.yyy ? r3.xyz : r7.xyz;
    r6.xyz = r0.yyy ? r1.xyz : r8.xyz;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r9.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r5.xyzw
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
  }
  return;
}