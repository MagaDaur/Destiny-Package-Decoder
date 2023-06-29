// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:37 2023
Buffer<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

cbuffer cb10 : register(b10)
{
  float4 cb10[2];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[164];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
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
    r2.xyzw = (int4)r0.yyyy + int4(2,1,3,4);
    r3.xyzw = t2.Load(r2.x).xyzw;
    r4.xyz = t2.Load(r2.y).xyz;
    r5.xyzw = t2.Load(r2.z).xyzw;
    r2.xyzw = t2.Load(r2.w).xyzw;
    r0.y = (int)r0.y + 5;
    r6.xy = t2.Load(r0.y).xy;
    r0.y = cb10[1].x + 0.25;
    r0.z = cmp(cb0[23].x < cb0[24].x);
    r0.z = r0.z ? cb0[23].x : 0;
    r0.yz = (int2)r0.yz;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = cb0[22].x / r5.x;
    r0.w = saturate(r2.x);
    r4.w = 1 + -r0.w;
    r7.x = r0.w * r0.w;
    r4.w = r4.w * r7.x + r0.w;
    r4.w = min(1, r4.w);
    r4.w = r4.w * 0.800000012 + 0.200000003;
    r7.xy = saturate(r6.xy);
    r0.w = r0.w * -0.949999988 + 1;
    r7.xz = r7.xy * float2(0.599999964,2.19999599) + float2(0.300000012,-1.19999599);
    r7.y = r7.y * r7.y;
    r7.y = r7.z * r7.y;
    r7.y = max(0, r7.y);
    r7.y = 0.0199999996 * r7.y;
    r7.z = saturate(r1.w);
    r7.z = 1 + -r7.z;
    r7.z = r7.z * -9.5 + 10;
    r3.x = r3.x + r0.z;
    r8.xyz = cb0[162].xyz * r4.www;
    r8.xyz = r8.xyz * cb0[161].xxx + r1.xyz;
    r0.z = saturate(cb0[163].x * 3);
    r0.z = 1 + -r0.z;
    r8.yzw = r8.xyz * r0.zzz;
    r9.xyz = cb0[148].xxx * r8.yzw;
    r10.xyz = r8.yzw * cb0[148].xxx + r4.xyz;
    r0.z = saturate(cb0[163].x * r7.z);
    r0.z = 1 + -r0.z;
    r3.y = r3.y * r0.z;
    r0.z = cb0[163].x * r3.y;
    r3.z = r0.z * 6.28318548 + r3.z;
    r0.z = dot(r1.xyz, r1.xyz);
    r0.z = sqrt(r0.z);
    r4.w = 9.99999975e-006 + r0.z;
    r11.xyz = r1.xyz / r4.www;
    r11.xyz = r11.xyz * float3(0.00999999978,0.00999999978,0.00999999978) + r4.xyz;
    r0.z = cmp(0.00100000005 < r0.z);
    r11.xyz = r0.zzz ? r11.xyz : r4.xyz;
    r0.z = dot(r8.yzw, r8.yzw);
    r0.z = sqrt(r0.z);
    r4.w = 9.99999975e-006 + r0.z;
    r12.xyz = r8.yzw / r4.www;
    r12.xyz = r12.xyz * float3(0.00999999978,0.00999999978,0.00999999978) + r10.xyz;
    r0.z = cmp(0.00100000005 < r0.z);
    r12.xyz = r0.zzz ? r12.xyz : r10.xyz;
    r13.xyz = cb12[1].xyw * r11.yyy;
    r11.xyw = cb12[0].xyw * r11.xxx + r13.xyz;
    r11.xyz = cb12[2].xyw * r11.zzz + r11.xyw;
    r11.xyz = cb12[3].xyw + r11.xyz;
    r13.xyz = cb12[1].xyw * r12.yyy;
    r12.xyw = cb12[0].xyw * r12.xxx + r13.xyz;
    r12.xyz = cb12[2].xyw * r12.zzz + r12.xyw;
    r12.xyz = cb12[3].xyw + r12.xyz;
    r7.zw = r11.xy / r11.zz;
    r7.zw = r7.zw * float2(0.5,-0.5) + float2(0.5,0.5);
    r11.xy = r12.xy / r12.zz;
    r11.xy = r11.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r7.zw = cb12[12].xy * r7.zw;
    r13.xy = (int2)r7.zw;
    r13.zw = float2(0,0);
    r0.z = t1.Load(r13.xyw).x;
    r0.z = r0.z * cb0[0].y + cb0[0].x;
    r0.z = 1 / r0.z;
    r7.zw = cb12[12].xy * r11.xy;
    r14.xy = (int2)r7.zw;
    r14.zw = float2(0,0);
    r4.w = t1.Load(r14.xyw).x;
    r4.w = r4.w * cb0[0].y + cb0[0].x;
    r4.w = 1 / r4.w;
    r11.xyw = t0.Load(r13.xyz).xyz;
    r11.xyw = r11.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r7.z = dot(r11.xyw, r11.xyw);
    r7.z = rsqrt(r7.z);
    r11.xyw = r11.xyw * r7.zzz;
    r12.xyw = t0.Load(r14.xyz).xyz;
    r12.xyw = r12.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r7.z = dot(r12.xyw, r12.xyw);
    r7.z = rsqrt(r7.z);
    r12.xyw = r12.xyw * r7.zzz;
    r7.z = -r4.w + r0.z;
    r7.w = dot(r11.xyw, r12.xyw);
    r7.xw = float2(1,1) + -r7.xw;
    r0.z = r0.z + -r11.z;
    r4.w = r4.w + -r12.z;
    r9.w = r4.w * r0.z;
    r9.w = cmp(r9.w < 0);
    r7.z = cmp(abs(r7.z) < 2.5);
    r7.z = r7.z ? r9.w : 0;
    r7.w = cmp(r7.w < 0.600000024);
    r7.z = r7.w ? r7.z : 0;
    r7.w = abs(r4.w) + abs(r0.z);
    r0.z = abs(r0.z) / r7.w;
    r11.x = 1 + r1.w;
    r7.w = dot(r12.xyw, r8.yzw);
    r9.w = r7.w + r7.w;
    r13.xyz = -r9.www * r12.xyw + r8.yzw;
    r11.yzw = r13.xyz * r7.yyy;
    r9.xyz = r0.zzz * r9.xyz + r4.xyz;
    r0.z = 1 + -r0.z;
    r13.xyz = r11.yzw * r0.zzz;
    r9.xyz = r13.xyz * cb0[22].xxx + r9.xyz;
    r9.xyz = r7.zzz ? r9.xyz : r10.xyz;
    r8.x = r1.w;
    r10.xyzw = r7.zzzz ? r11.xyzw : r8.xyzw;
    r0.z = cmp(abs(r4.w) < 0.100000001);
    r11.xyz = -r7.www * r12.xyw + r8.yzw;
    r1.w = dot(r11.xyz, r11.xyz);
    r1.w = rsqrt(r1.w);
    r11.xyz = r11.xyz * r1.www;
    r1.w = dot(r11.xyz, r8.yzw);
    r1.w = r1.w * r7.x;
    r7.x = cmp(abs(r7.w) < 1);
    r7.x = r0.z ? r7.x : 0;
    r0.w = cmp(r1.w < r0.w);
    r0.z = r0.z ? r0.w : 0;
    r0.w = r0.z ? 9.99999975e-005 : r1.w;
    r7.yzw = r11.xyz * r0.www;
    r7.yzw = r7.xxx ? r7.yzw : r10.yzw;
    r8.xyz = cb12[7].xyz + -r9.xyz;
    r0.w = dot(r8.xyz, r8.xyz);
    r0.w = rsqrt(r0.w);
    r8.xyz = r8.xyz * r0.www;
    r0.w = 0.00999999978 + -r4.w;
    r8.xyz = r8.xyz * r0.www + r4.xyz;
    r8.xyz = r7.yzw * cb0[22].xxx + r8.xyz;
    r8.xyz = r7.xxx ? r8.xyz : r9.xyz;
    r0.z = r7.x ? r0.z : 0;
    r4.xyz = r0.zzz ? r4.xyz : r8.xyz;
    r1.xyz = r0.zzz ? r1.xyz : r7.yzw;
    r0.z = max(1, r10.x);
    r1.w = r7.x ? r0.z : r10.x;
    r7.xyz = -cb9[r0.y+32].yzx * r4.zxy;
    r7.xyz = r4.yzx * -cb9[r0.y+32].zxy + -r7.xyz;
    r0.z = dot(r4.xyz, -cb9[r0.y+32].xyz);
    r7.w = -r0.z;
    r8.xyz = cb9[r0.y+32].www * r4.xyz;
    r8.w = 0;
    r7.xyzw = r8.xyzw + r7.xyzw;
    r8.xyz = cb9[r0.y+32].zxy * r7.yzx;
    r8.xyz = cb9[r0.y+32].yzx * r7.zxy + -r8.xyz;
    r7.xyz = cb9[r0.y+32].www * r7.xyz + r8.xyz;
    r7.xyz = r7.www * cb9[r0.y+32].xyz + r7.xyz;
    r0.yzw = cb9[r0.y+0].xyz + r7.xyz;
    r0.yzw = -cb12[7].xyz + r0.yzw;
    r0.y = dot(r0.yzw, r0.yzw);
    r4.w = sqrt(r0.y);
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r3.xyzw
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