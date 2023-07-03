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
  float4 cb0[159];
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
    r2.xyzw = t2.Load(r2.w).xyzw;
    r0.y = cb0[22].x / r4.w;
    r6.xyz = saturate(r2.yzw);
    r6.xyw = r6.xyz * float3(0.25,0.599999964,2.19999599) + float3(0.75,0.300000012,-1.19999599);
    r0.z = r6.z * r6.z;
    r0.z = r6.w * r0.z;
    r0.z = max(0, r0.z);
    r0.z = 0.0199999996 * r0.z;
    r7.w = r3.w + r0.y;
    r6.xzw = cb0[157].xyz * r6.xxx;
    r6.xzw = r6.xzw * cb0[156].xxx + r1.xyz;
    r0.y = saturate(cb0[158].x);
    r0.y = 1 + -r0.y;
    r8.yzw = r6.xzw * r0.yyy;
    r6.xzw = cb0[143].xxx * r8.yzw;
    r9.xyz = r8.yzw * cb0[143].xxx + r3.xyz;
    r0.y = cb0[158].x * r4.x;
    r4.y = r0.y * 6.28318548 + r4.y;
    r0.y = dot(r1.xyz, r1.xyz);
    r0.y = sqrt(r0.y);
    r0.w = 9.99999975e-006 + r0.y;
    r10.xyz = r1.xyz / r0.www;
    r10.xyz = r10.xyz * float3(0.00999999978,0.00999999978,0.00999999978) + r3.xyz;
    r0.y = cmp(0.00100000005 < r0.y);
    r10.xyz = r0.yyy ? r10.xyz : r3.xyz;
    r0.y = dot(r8.yzw, r8.yzw);
    r0.y = sqrt(r0.y);
    r0.w = 9.99999975e-006 + r0.y;
    r11.xyz = r8.yzw / r0.www;
    r11.xyz = r11.xyz * float3(0.00999999978,0.00999999978,0.00999999978) + r9.xyz;
    r0.y = cmp(0.00100000005 < r0.y);
    r11.xyz = r0.yyy ? r11.xyz : r9.xyz;
    r12.xyz = cb12[1].xyw * r10.yyy;
    r10.xyw = cb12[0].xyw * r10.xxx + r12.xyz;
    r10.xyz = cb12[2].xyw * r10.zzz + r10.xyw;
    r10.xyz = cb12[3].xyw + r10.xyz;
    r12.xyz = cb12[1].xyw * r11.yyy;
    r11.xyw = cb12[0].xyw * r11.xxx + r12.xyz;
    r11.xyz = cb12[2].xyw * r11.zzz + r11.xyw;
    r11.xyz = cb12[3].xyw + r11.xyz;
    r0.yw = r10.xy / r10.zz;
    r0.yw = r0.yw * float2(0.5,-0.5) + float2(0.5,0.5);
    r10.xy = r11.xy / r11.zz;
    r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.yw = cb12[12].xy * r0.yw;
    r12.xy = (int2)r0.yw;
    r12.zw = float2(0,0);
    r0.y = t1.Load(r12.xyw).x;
    r0.y = r0.y * cb0[0].y + cb0[0].x;
    r0.y = 1 / r0.y;
    r10.xy = cb12[12].xy * r10.xy;
    r13.xy = (int2)r10.xy;
    r13.zw = float2(0,0);
    r0.w = t1.Load(r13.xyw).x;
    r0.w = r0.w * cb0[0].y + cb0[0].x;
    r0.w = 1 / r0.w;
    r10.xyw = t0.Load(r12.xyz).xyz;
    r10.xyw = r10.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r3.w = dot(r10.xyw, r10.xyw);
    r3.w = rsqrt(r3.w);
    r10.xyw = r10.xyw * r3.www;
    r11.xyw = t0.Load(r13.xyz).xyz;
    r11.xyw = r11.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r3.w = dot(r11.xyw, r11.xyw);
    r3.w = rsqrt(r3.w);
    r11.xyw = r11.xyw * r3.www;
    r3.w = r0.y + -r0.w;
    r9.w = dot(r10.xyw, r11.xyw);
    r9.w = 1 + -r9.w;
    r0.y = r0.y + -r10.z;
    r0.w = r0.w + -r11.z;
    r10.x = r0.y * r0.w;
    r10.x = cmp(r10.x < 0);
    r3.w = cmp(abs(r3.w) < 2.5);
    r3.w = r3.w ? r10.x : 0;
    r9.w = cmp(r9.w < 0.600000024);
    r3.w = r3.w ? r9.w : 0;
    r9.w = abs(r0.y) + abs(r0.w);
    r0.y = abs(r0.y) / r9.w;
    r8.x = cb0[22].x + r1.w;
    r1.w = dot(r11.xyw, r8.yzw);
    r9.w = r1.w + r1.w;
    r10.xyz = -r9.www * r11.xyw + r8.yzw;
    r10.yzw = r10.xyz * r0.zzz;
    r6.xzw = r0.yyy * r6.xzw + r3.xyz;
    r0.y = 1 + -r0.y;
    r12.xyz = r10.yzw * r0.yyy;
    r6.xzw = r12.xyz * cb0[22].xxx + r6.xzw;
    r6.xzw = r3.www ? r6.xzw : r9.xyz;
    r10.x = 0;
    r9.xyzw = r3.wwww ? r10.yzwx : r8.yzwx;
    r0.y = cmp(abs(r0.w) < 0.100000001);
    r10.xyz = -r1.www * r11.xyw + r8.yzw;
    r0.z = dot(r10.xyz, r10.xyz);
    r0.z = rsqrt(r0.z);
    r10.xyz = r10.xyz * r0.zzz;
    r0.z = dot(r10.xyz, r8.yzw);
    r3.w = 1 + -r6.y;
    r0.z = r3.w * r0.z;
    r1.w = cmp(abs(r1.w) < 1);
    r1.w = r0.y ? r1.w : 0;
    r3.w = cmp(r0.z < 0.00999999978);
    r0.y = r0.y ? r3.w : 0;
    r0.z = r0.y ? 9.99999975e-005 : r0.z;
    r8.xyz = r10.xyz * r0.zzz;
    r8.xyz = r1.www ? r8.xyz : r9.xyz;
    r10.xyz = cb12[7].xyz + -r6.xzw;
    r0.z = dot(r10.xyz, r10.xyz);
    r0.z = rsqrt(r0.z);
    r10.xyz = r10.xyz * r0.zzz;
    r0.z = 0.00999999978 + -r0.w;
    r10.xyz = r10.xyz * r0.zzz + r3.xyz;
    r10.xyz = r8.xyz * cb0[22].xxx + r10.xyz;
    r6.xyz = r1.www ? r10.xyz : r6.xzw;
    r0.y = r1.w ? r0.y : 0;
    r7.xyz = r0.yyy ? r3.xyz : r6.xyz;
    r9.xyz = r0.yyy ? r1.xyz : r8.xyz;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r9.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r7.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r5.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
  }
  return;
}